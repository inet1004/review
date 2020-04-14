package review.emp;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Paging;

/**
 * Servlet implementation class EmpList
 */
@WebServlet("/EmpList.do")
public class EmpList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpSearchDTO sdto = new EmpSearchDTO(); 

		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(2);
		paging.setPageSize(5);		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1; //널이 아니면 1이 기본으로 들어감
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);

		//검색 파라미터
		sdto.setDepartment_id(request.getParameter("department_id"));  // EmpSearchDTO 들어감
		sdto.setFirst_name(request.getParameter("first_name"));
		sdto.setFirst(paging.getFirst());  // page값 계산함
		sdto.setEnd(paging.getLast());
		
		//목록조회
		ArrayList<EmpDTO> list = EmpDAO.getInstance().getDBList(sdto);  // 서치 DTO를 넘겨줌
		
		// 전체 건수
		int total = EmpDAO.getInstance().count(sdto);	//getDBList(sdto);  // 같이 sdto 넘겨주어야 함
		paging.setTotalRecord(total);  //전체page를 paging에 넘김

		//결과저장
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
	
		request.getRequestDispatcher("./jsp/empList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
