package pers.ryan.portfolio.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import pers.ryan.portfolio.dao.CommentMapper;
import pers.ryan.portfolio.domain.Comment;

@Service
public class CommentService {

	@Resource
	private CommentMapper commentMapper;
	
	public List<Comment> findComments(){
		return commentMapper.findComments();
	}

	/**
	 * save a comment to a theme
	 * @param comment
	 * 		comment which is saving
	 * @param id 
	 * 		commentId of the comment is replying
	 */
	public void replyById(Comment comment, Integer id) {
		commentMapper.insertCommentById(comment, id);
	}

	/***
	 * save a new theme
	 * @param comment
	 * 		a theme which is saving
	 */
	public void createTheme(Comment comment) {
		commentMapper.insertComment(comment);
	}
}
