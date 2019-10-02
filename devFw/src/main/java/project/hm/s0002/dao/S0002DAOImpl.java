package project.hm.s0002.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import project.hm.s0002.vo.S0002VO;


@Repository("s0002DAO")
public class S0002DAOImpl implements S0002DAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<S0002VO> searchList(Map<String, Object> searchMap) throws DataAccessException {
		List<S0002VO> list = sqlSession.selectList("hm.s0002.searchList", searchMap);
		return list;
	}

	@Override
	public void insertData(Map<String, String> row) throws DataAccessException {
		sqlSession.update("hm.s0002.insertData", row);
	}

	@Override
	public void updateData(Map<String, String> row) throws DataAccessException {
		sqlSession.update("hm.s0002.updateData", row);
	}

	@Override
	public void deleteData(Map<String, String> row) throws DataAccessException {
		sqlSession.update("hm.s0002.deleteData", row);
	}

}
