package project.hm.p0003.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public interface P0003Controller {
	public ModelAndView searchInit(HttpServletRequest request, HttpServletResponse response) throws Exception;	
	public ModelAndView searchMember(String p_id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView searchMod(String p_id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView searchInsert(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity updateMember(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}