package project.hm.p0003.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import project.hm.p0003.vo.P0003VO;


@Repository("p0003DAO") 
public class P0003DAOImpl implements P0003DAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<P0003VO> searchMember(Map<String, Object> searchMap) throws DataAccessException {
		List<P0003VO> list = sqlSession.selectList("hm.p0003.searchMember", searchMap);
		return list;
	}
	
	@Override
	public List<P0003VO> searchMod(Map<String, Object> searchMap) throws DataAccessException {
		List<P0003VO> list = sqlSession.selectList("hm.p0003.searchMod", searchMap);
		return list;
	}

	@Override
	public List<P0003VO> searchAdd() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(Map<String, Object> datahMap) throws DataAccessException {
		sqlSession.update("hm.p0003.updateMember", datahMap);
	}

	@Override
	public void insertMember(Map<String, Object> datahMap) throws DataAccessException {
		sqlSession.update("hm.p0003.insertMember", datahMap);
	}

	@Override
	public void deleteMember(Map<String, Object> datahMap) throws DataAccessException {
		sqlSession.update("hm.p0003.deleteMember", datahMap);
	}

}
