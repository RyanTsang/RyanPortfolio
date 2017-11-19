package pers.ryan.portfolio.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pers.ryan.portfolio.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private UserService userService;
	
	//response ajax request on index.jsp 
	@RequestMapping("requestNum.do")	
	public @ResponseBody Map<String, String> requestJson(HttpServletRequest request) {
		String clientIp = "";
		String xForwardedForHeader = request.getHeader("X-Forwarded-For");
		if (xForwardedForHeader == null) {
			clientIp = request.getRemoteAddr();
		} else {
			clientIp = new StringTokenizer(xForwardedForHeader, ",").nextToken().trim();
		}
		Map json = new HashMap<String, String>();
		json.put("num", userService.getNumById(clientIp));
		return json;
	}
}
