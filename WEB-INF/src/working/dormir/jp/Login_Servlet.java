package working.dormir.jp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login_Servlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ
		req.setCharacterEncoding("utf-8");
		req.setAttribute("state", "");
		String url = "/WEB-INF/jsp/login.jsp";
		//System.out.println("ゲットされました");

		req.getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) //セキュリティの見直しが必要
			throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ

		String url = "/WEB-INF/jsp/login.jsp";
		String username = req.getParameter("user");
		String password = req.getParameter("password");
		
		if (username.equals("")) {
			req.setAttribute("state", "<font color=\"#F00\">ユーザー名を入力してください</font>");
			req.getRequestDispatcher(url).forward(req, resp); //URLそのままで飛ばす
			return;

		}
		if (password.equals("")) {
			req.setAttribute("state", "<font color=\"#F00\">パスワードを入力してください</font>");
			req.getRequestDispatcher(url).forward(req, resp);
			return;

		}

		resp.sendRedirect("/WEB-INF/jsp/login.jsp"); //URLを変える

	}

}
