package com.example.demo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table
public class BlogTable {
	@Id
	private int blogId;
	@Column
	private String blogTitle;
	@Column
	private String blogContent;
	@Column
	private String blogAuthor;
	@Column
	private String blogImage;
	@Temporal(value=TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column
	private Date blogDate;
	@Column
	private String blogSlug;

	public BlogTable() {

	}
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public String getBlogContent() {
		return blogContent;
	}
	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}
	public String getBlogAuthor() {
		return blogAuthor;
	}
	public void setBlogAuthor(String blogAuthor) {
		this.blogAuthor = blogAuthor;
	}
	public String getBlogImage() {
		return blogImage;
	}
	public void setBlogImage(String blogImage) {
		this.blogImage = blogImage;
	}
	public Date getBlogDate() {
		return blogDate;
	}
	public void setBlogDate(Date blogDate) {
		this.blogDate = blogDate;
	}
	public String getBlogSlug() {
		return blogSlug;
	}
	public void setBlogSlug(String blogSlug) {
		this.blogSlug = blogSlug;
	}
	public BlogTable(int blogId, String blogTitle, String blogContent, String blogAuthor, String blogImage, Date blogDate,
			String blogSlug) {
		super();
		this.blogId = blogId;
		this.blogTitle = blogTitle;
		this.blogContent = blogContent;
		this.blogAuthor = blogAuthor;
		this.blogImage = blogImage;
		this.blogDate = blogDate;
		this.blogSlug = blogSlug;
	}



}
