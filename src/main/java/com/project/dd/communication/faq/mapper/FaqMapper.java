package com.project.dd.communication.faq.mapper;

import java.util.List;
import java.util.Map;

import com.project.dd.communication.faq.domain.FaqDTO;

public interface FaqMapper {

	int getTotalCount(String type);

	List<FaqDTO> getFaqList(Map<String, String> map);

	int getTotalCount();

	int addFaq(FaqDTO dto);

	FaqDTO getFaq(String seq);

	int editFaq(FaqDTO dto);

	void deleteFaq(String seq);

}
