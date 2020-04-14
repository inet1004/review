package jspbook.addrbook;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import common.Paging;

/*
 * HttpServlet 상속
 * doGet,doPost -> service 오버라이딩
 */
@WebServlet("/jspbook/addrbook/AddrServ.do")  // http://localhost/jspPrjt  /addrServ
public class AddrBookServlet extends HttpServlet {

	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("주소록 조회");
		//응답결과 페이지 인코딩
		response.setContentType("text/html; charset=UTF-8");
		//요청 파라미터 인코딩
		request.setCharacterEncoding("UTF-8");
		//빈생성
		AddrDAO dao = new AddrDAO();
		AddrBook addrbook = new AddrBook();
		
		//파라미터를 빈에 저장
		addrbook.setAb_birth(request.getParameter("ab_birth"));
		addrbook.setAb_comdept(request.getParameter("ab_comdept"));
		addrbook.setAb_email(request.getParameter("ab_email"));
		if( request.getParameter("ab_id") != null)
			addrbook.setAb_id(Integer.parseInt(request.getParameter("ab_id")));
		addrbook.setAb_memo(request.getParameter("ab_memo"));
		addrbook.setAb_name(request.getParameter("ab_name"));
		addrbook.setAb_tel(request.getParameter("ab_tel"));
		
		//명령구분(action 파라미터)
		String action = request.getParameter("action");
		if(action.equals("list")) { 	
			//페이징처리
			Paging paging = new Paging();
			paging.setPageUnit(2);
			//현재 페이지번호
			String page = request.getParameter("page");
			int p = 1;
			if (page != null)
				p = Integer.parseInt(page);
			paging.setPage(p);

			// 전체 건수
			int total = dao.count();//
			paging.setTotalRecord(total);
			
			//목록조회
			AddrBookSearch abs = new AddrBookSearch();
			abs.setFirst(paging.getFirst());
			abs.setLast(paging.getLast());			
			ArrayList<AddrBook> list = dao.selectPage(abs);
			//결과저장
			request.setAttribute("addrList", list);
			request.setAttribute("paging", paging);
			//뷰페이지로 포워드(이동)
			request.getRequestDispatcher("addrbook_list_page.jsp")
					.forward(request, response);
		} else if(action.equals("insert")) {
			if( dao.insert(addrbook) ) {
				response.sendRedirect("AddrServ?action=list");
			} else {
				//throw new Exception("DB 등록 오류");
				response.getWriter().append("<script>alert('등록오류');")
									.append("history.go(-1);</script>");
			}			
		} else if(action.equals("edit")) {  //수정폼
			//패스워드 체크
			if(!request.getParameter("upasswd").equals("1234")) {
				response.getWriter().append("<script>alert('패스워드 오류');")
				.append("history.go(-1);</script>");
				return;
			}
			//id에해당하는 주소록을 단건조회해서
			AddrBook result = dao.selectOne(addrbook.getAb_id());
			//결과저장
			request.setAttribute("ab", result);
			//수정페이지로 포워드
			request.getRequestDispatcher("addrbook_edit_form.jsp")
			.forward(request, response);
		} else if(action.equals("update")) {  //DB update
			if(dao.update(addrbook))  {
				response.sendRedirect("AddrServ?action=list");
			} else {
				response.getWriter().append("<script>alert('수정오류');")
				.append("history.go(-1);</script>");
			}
		} else if(action.equals("delete")) {
			if(dao.delete(addrbook.getAb_id()))  {
				response.sendRedirect("AddrServ?action=list");
			} else {
				response.getWriter().append("<script>alert('삭제오류');")
				.append("history.go(-1);</script>");
			}			
		}
		
		
	}

}
