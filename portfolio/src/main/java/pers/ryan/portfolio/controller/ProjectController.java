package pers.ryan.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/projects")
public class ProjectController {
	
	@RequestMapping(value = "{jspName}", method = RequestMethod.GET)
	public String dispatchJsp(@PathVariable String jspName) {
		return "projects/"+jspName;
	}
}
