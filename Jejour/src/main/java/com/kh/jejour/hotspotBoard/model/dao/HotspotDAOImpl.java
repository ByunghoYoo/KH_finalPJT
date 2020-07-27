package com.kh.jejour.hotspotBoard.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.jejour.hotspotBoard.model.vo.HotspotBoard;

@Repository("Hotspotdao")
public class HotspotDAOImpl implements HotspotDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int hotspotInsert(HotspotBoard hotspotboard) {
		return sqlSession.insert("hotspotMapper.hotspotInsert", hotspotboard);
	}

	@Override
	public int hotspotUpdate(HotspotBoard hotspotboard) {

		return sqlSession.update("hotspotMapper.hotspotUpdate", hotspotboard);
	}

	@Override
	public List<Map<String, String>> hotspotPageList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1)*numPerPage, numPerPage);
		
		return sqlSession.selectList("hotspotMapper.HotspotPageList", null, rows);
	}

	@Override
	public int hotspotDelete(HotspotBoard hotspotboard) {
		System.out.println("DAO");
		return sqlSession.update("hotspotMapper.hotspotDelete", hotspotboard);
	}

	@Override
	public int selectBoardTotalContents() {
		
		return sqlSession.selectOne("hotspotMapper.selectBoardTotalContents");
	}

	@Override
	public HotspotBoard hotspotSelectOne(int hNo) {
		
		return sqlSession.selectOne("hotspotMapper.hotspotSelectOne", hNo);
	}


}
