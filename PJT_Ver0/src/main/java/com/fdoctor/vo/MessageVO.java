package com.fdoctor.vo;

public class MessageVO {

	private int message_no; // 번호
	private String sender; // 보낸 사람
	private String recipient; // 받는 사람
	private String message_title; // 제목
	private String message_cont; // 내용
	private String message_date; // 작성시간
	private String message_ck;
	
	public int getMessage_no() {
		return message_no;
	}
	public void setMessage_no(int message_no) {
		this.message_no = message_no;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getMessage_title() {
		return message_title;
	}
	public void setMessage_title(String message_title) {
		this.message_title = message_title;
	}
	public String getMessage_cont() {
		return message_cont;
	}
	public void setMessage_cont(String message_cont) {
		this.message_cont = message_cont;
	}
	public String getMessage_date() {
		return message_date;
	}
	public void setMessage_date(String message_date) {
		this.message_date = message_date;
	}
	public String getMessage_ck() {
		return message_ck;
	}
	public void setMessage_ck(String message_ck) {
		this.message_ck = message_ck;
	}
	

	
	
	
}
