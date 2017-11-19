package pers.ryan.portfolio.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.ryan.portfolio.domain.Comment;
import pers.ryan.portfolio.service.CommentService;

@Controller
@RequestMapping("comment")
public class CommentController {

	@Resource
	private CommentService commentService;

	@RequestMapping("list.do")
	public String list(ModelMap model) {
		List<Comment> res = commentService.findComments();
		model.addAttribute("comments", res);
		return "comment";
	}

	//create new comment(new theme or reply)
	@RequestMapping("save.do")
	public String save(Comment comment) {
		Integer id = comment.getId();
		String name = comment.getName();
		comment.setCreatedDate(new Date());
		if ("ryantsang713".equalsIgnoreCase(name)) {
			comment.setName("Ryan Tsang");
			comment.setHost(true);
		}
		if (id != null) {
			comment.setId(null);
			comment.setLevel(2);
			commentService.replyById(comment, id);
		} else {
			comment.setLevel(1);
			commentService.createTheme(comment);
		}
		return "redirect:/comment.html";
	}
}
