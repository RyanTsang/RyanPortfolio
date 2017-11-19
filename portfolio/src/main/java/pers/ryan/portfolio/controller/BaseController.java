package pers.ryan.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

	@RequestMapping(value = "{jspName}", method = RequestMethod.GET)
	public String dispatchJsp(@PathVariable String jspName) {
		if("comment".equals(jspName)) {
			return "forward:comment/list.do";
		}
		return jspName;
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String dispatchIndex() {
			return "index";
	}
}
