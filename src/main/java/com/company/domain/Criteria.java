package com.company.domain;

import lombok.ToString;

import lombok.Setter;

import lombok.Getter;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum; //페이지 번호 
	private int amount; // 페이지당 보여쥴 개수
	
	private String type; // 검색조건
	private String keyword; //검색조건
	
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

}
