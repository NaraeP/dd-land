package com.project.dd.test.worldcup.course.mapper;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.project.dd.activity.movie.domain.MovieDTO;
import com.project.dd.test.worldcup.course.domain.CourseDTO;
import com.project.dd.test.worldcup.course.domain.WorldCupCourseDTO;

public interface WorldCupCourseMapper {

    // 페이징
	int getTotalCount();
	
	List<CourseDTO> getAllCourse(Map<String, String> map);
	
	void updateCourseStatus(Map<String, String> map);

	int addCourse(CourseDTO dto);

	String getCourseSeq();

	int checkNameDuplication(CourseDTO dto);

	int addCWC(CourseDTO dto);

	int addCWCWin(CourseDTO dto);
	
	int addCWCFinalWin(CourseDTO dto);

	int getCWCFinalWinTotalCount();

	CourseDTO getCourse(String courseSeq);

	int editCourse(CourseDTO dto);

	String getCourseImgFileName(String courseSeq);

	int delCourse(String seq);

	int delCWC(String seq);

	int delCWCWin(String seq);

	int delCWCFinalWin(String seq);
	
}
