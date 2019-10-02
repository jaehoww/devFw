package project.hm.p0003.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import project.hm.p0003.dao.P0003DAO;
import project.hm.p0003.vo.P0003VO;

@Service("p0003Service")
@Transactional(propagation = Propagation.REQUIRED)
public class P0003ServiceImpl implements P0003Service {
	@Autowired
	private P0003DAO P0003DAO;

	@Override
	public List<P0003VO> searchMember(Map<String, Object> searchMap) throws DataAccessException {
		List<P0003VO> list =  P0003DAO.searchMember(searchMap);
		return list;
	}
	@Override
	public List<P0003VO> searchMod(Map<String, Object> searchMap) throws DataAccessException {
		List<P0003VO> list =  P0003DAO.searchMod(searchMap);
		return list;
	}

	@Override
	public List<P0003VO> searchAdd() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(Map<String, Object> datahMap) throws Exception {
		P0003DAO.updateMember(datahMap);
	}

	@Override
	public void insertMember(Map<String, Object> datahMap) throws Exception {
		P0003DAO.insertMember(datahMap);
	}

	@Override
	public void deleteMember(Map<String, Object> datahMap) throws Exception {
		P0003DAO.deleteMember(datahMap);
	}
}
