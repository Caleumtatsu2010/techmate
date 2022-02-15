package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.AccountDao;
import com.longnh02.techmate.Models.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginAdmin", value = "/LoginAdmin")
public class LoginAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            AccountDao acc = new AccountDao();
            Account account = acc.login(username, password);
            HttpSession session = request.getSession();

            if(account != null){

                session.setAttribute("account",account);
                response.sendRedirect("Dashboard");
            }
            else
            {
                request.setAttribute("loginError","Incorrect username or password");
                request.getRequestDispatcher("LoginAdmin.jsp").forward(request, response);
            }

        }catch (Exception ex)
        {
            ex.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
