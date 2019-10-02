package project.hm.p0004.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import project.hm.p0004.vo.P0004VO;

public interface P0004Service {
	 public List<P0004VO> searchMember(Map<String, Object> searchMap) throws DataAccessException;
	
}
