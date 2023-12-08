package com.project.dd.mypage.inquiry.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dd.mypage.inquiry.domain.InquiryDTO;
import com.project.dd.mypage.inquiry.repository.MypageInquiryDAO;

@Service
public class MypageInquiryService {
	
	@Autowired
	private MypageInquiryDAO dao;

	public List<InquiryDTO> list(Map<String, String> map) {
		
		return dao.list(map);
	}

	public Map<String, String> paging(int page) {
		
		  int pageSize = 9;  //나타났으면 하는 개수
	      
	      int startIndex = (page - 1) * pageSize + 1;
	      int endIndex = startIndex + pageSize - 1;
	      
	      Map<String, String> map = new HashMap<String, String>();

	      map.put("startIndex", String.format("%d", startIndex));
	      map.put("endIndex", String.format("%d", endIndex));
	      
	      int totalPosts = dao.getTotalCount();
	      int totalPages = (int)Math.ceil((double)totalPosts / pageSize);
	      
	      map.put("totalPosts", String.format("%d", totalPosts));
	      map.put("totalPages", String.format("%d", totalPages));
	      
	      return map;
	}

	public int delete(String selectedInquiry) {
		
		return dao.delete(selectedInquiry);
	}

}
