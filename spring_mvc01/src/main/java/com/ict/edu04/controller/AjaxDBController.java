package com.ict.edu04.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.ict.edu04.service.AjaxMembersService;
import com.ict.edu04.vo.MembersVO;

@RestController
public class AjaxDBController {
	
	@Autowired 
	private AjaxMembersService ajaxMembersService;
	
	@RequestMapping(value = "/ajax_db_list", produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String getAjaxList() {		
		// DB 갖다오기
		List<MembersVO> list = ajaxMembersService.getMemberList();
		
		// System.out.println(list.size());
		if (list != null) {
			StringBuilder sb = new StringBuilder();
			sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
			sb.append("<members>"); // root 태그(~~~s)
			for (MembersVO k : list) {
				sb.append("<member>");
				sb.append("<m_idx>" + k.getM_idx() + "</m_idx>");
				sb.append("<m_id>" + k.getM_id() + "</m_id>");
				sb.append("<m_pw>" + k.getM_pw() + "</m_pw>");
				sb.append("<m_name>" + k.getM_name() + "</m_name>");
				sb.append("<m_age>" + k.getM_age() + "</m_age>");
				sb.append("<m_reg>" + k.getM_reg() + "</m_reg>");
				sb.append("</member>");
			}
			
			sb.append("</members>"); // root 태그(~~~s)
			
			
			return sb.toString();
		}
		
		return "fail";
		
	}
	
	@RequestMapping(value = "/ajax_db_list2", produces = "application/json; charset=utf-8")
	@ResponseBody
	 public String getAjaxList2() {
	      // Spring에서 json을 만들거나 파싱할 대는 여러가지 라이브러리를 사용할 수 있다.
	      // 그 중 gson이라는 라이브러리를 사용하자(pom.xml에 등록)
	      // DB 갔다 오기
	      List<MembersVO> list = ajaxMembersService.getMemberList();
	      
	      if (list != null) {
	         Gson gson = new Gson();
	         String jsonString = gson.toJson(list);
	         return jsonString;
	      }
	         
	      return "fail";
	   }
	
	@RequestMapping(value = "/ajax_db_list3", produces = "application/csv; charset=utf-8")
	@ResponseBody
	 public String getAjaxList3() {	     
	      List<MembersVO> list = ajaxMembersService.getMemberList();
	      
	      if (list != null) {
	         // CSV 만들기(
	    	  StringBuilder sb = new StringBuilder();
	    	  
	    	  // 헤더추가(컬럼명) 옵션(생략가능)
	    	  sb.append("m_idx,m_id,m_pw,m_name,m_age,m_reg\n");
	    	  
	    	  for (MembersVO k : list) {
				sb.append(k.getM_idx()).append(",")
				  .append(k.getM_id()).append(",")
				  .append(k.getM_pw()).append(",")
				  .append(k.getM_name()).append(",")
				  .append(k.getM_age()).append(",")
				  .append(k.getM_reg()).append("\n");
				
			}
	    	  return sb.toString();
	      }
	         
	      return "fail";
	   }
	
	@RequestMapping(value = "/ajax_id_chk", produces = "text/plain; charset=utf-8")
	@ResponseBody
	 public String getAjaxIdchk(HttpServletRequest request) {
	    String m_id = request.getParameter("m_id");  
		String result = ajaxMembersService.getMemberIdchk(m_id);		
	    return "result";
	      
	   }
	
	@RequestMapping(value = "/ajax_member_join", produces = "text/plain; charset=utf-8")
	@ResponseBody
	 public String getAjaxMemberJone(MembersVO mvo) {
	   	String result = ajaxMembersService.getMemberInsert(mvo);
	    return result;
	      
	   }
	
	@RequestMapping(value = "/ajax_member_delete", produces = "text/plain; charset=utf-8")
	@ResponseBody
	 public String getAjaxMemberDelete(@RequestParam("m_idx") String m_idx) {
	   //  String m_idx = request.getParameter("m_idx") =>
		String result = ajaxMembersService.getMemberDelete(m_idx);
	    return result;
	      
	   }
}







