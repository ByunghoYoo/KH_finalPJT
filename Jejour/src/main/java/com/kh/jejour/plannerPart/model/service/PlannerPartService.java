package com.kh.jejour.plannerPart.model.service;

import java.util.List;

import com.kh.jejour.planner.model.vo.Attachment;
import com.kh.jejour.planner.model.vo.Planner;
import com.kh.jejour.plannerPart.model.vo.CategoryCount;
import com.kh.jejour.plannerPart.model.vo.PlannerPart;


public interface PlannerPartService {
		// 만약 에러 결과등의 0, 1 들을 
		// 숫자 이외의 역활로 사용한다면
		// 직접 상수로 등록하여 실수로 
		// 숫자 계산에 포함되지 않도록 한다.
		
		static int PLANNER_PART_SERVICE_ERROR = 0;
		static int PLANNER_PART_SERVICE_COMPLETE = 1;	
		
		int settingPlanner(PlannerPart plannerPart);

		List<PlannerPart> selectPlanList(int pNo);

		int deletePlanner(int ppNo);

		PlannerPart getThisPlannerPart(int ppNo);

		int updatePlanner(PlannerPart plannerPart);

		List<CategoryCount> countCategory(int pNo);
	
}
