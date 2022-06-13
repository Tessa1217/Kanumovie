package co.edu.kanumovie.comment.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class CommentVO {
	private int cid;
	private String comment;
	private Date wdate;
	private int id; // movies 테이블 영화아이디
	private String email; // user 테이블 email
	
}