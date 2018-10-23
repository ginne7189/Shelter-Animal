package com.animalshelter.donation;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.animalshelter.util.PageMove;

@WebServlet("/donation")
public class Donation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Enumeration en = request.getParameterNames();
		String readString = "";
		while (en.hasMoreElements()) {
			String paramName = (String) en.nextElement();
			String paramValue = request.getParameter(paramName);
			readString = readString + "&" + paramName + "=" + URLDecoder.decode(paramValue, "UTF-8");
		}
		System.out.println(readString);

		String resultCode = request.getParameter("resultCode");
		System.out.println("resultCode ====== " + resultCode);
		if (resultCode.equals("Success")) {
			String paymentId = request.getParameter("paymentId");
			System.out.println("paymentId ====== " + paymentId);
			String money = request.getParameter("money");
			System.out.println("money ====== " + money);
			/*
			 * 성공시 DB작업 등
			 */
			request.setAttribute("money", money);
			String path = "payOk.jsp";
			PageMove.forward(path, request, response);
			System.out.println("결제 성공!!");
		} else {
			System.out.println("결제 실패!");
			/*
			 * 실패시 DB작업 등
			 */
			String path = "payFail.jsp";
			PageMove.forward(path, request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
