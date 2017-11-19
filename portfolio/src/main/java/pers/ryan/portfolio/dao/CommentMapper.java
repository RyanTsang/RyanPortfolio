package pers.ryan.portfolio.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.ryan.portfolio.domain.Comment;

public interface CommentMapper {

	public List<Comment> findComments();

	/***
	 * save a reply to a theme
	 * @param comment
	 * 		new comment
	 * @param commentId
	 * 		commentId of the theme is replying
	 */
	public void insertCommentById(@Param("comment") Comment comment, @Param("commentId") Integer commentId);

	/****
	 * save a new theme
	 * @param comment
	 * 		new theme
	 */
	public void insertComment(Comment comment);
	
}
