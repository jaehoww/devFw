package project.hm.p0003.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import project.hm.p0003.vo.P0003VO;

public interface P0003Service {
	 public List<P0003VO> searchMember(Map<String, Object> searchMap) throws DataAccessException;
	 
	 public List<P0003VO> searchMod(Map<String, Object> searchMap) throws DataAccessException;
	 public List<P0003VO> searchAdd() throws DataAccessException;
	 
	 public void updateMember(Map<String, Object> datahMap) throws Exception;
	 public void insertMember(Map<String, Object> datahMap) throws Exception;
	 public void deleteMember(Map<String, Object> datahMap) throws Exception;
}
