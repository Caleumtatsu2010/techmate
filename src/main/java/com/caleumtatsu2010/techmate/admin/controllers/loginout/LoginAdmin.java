package com.caleumtatsu2010.techmate.admin.controllers.loginout;

import com.caleumtatsu2010.techmate.dao.AccountDao;
import com.caleumtatsu2010.techmate.models.account.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginAdmin", value = "/LoginAdmin")
public class LoginAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/views/admin/login/LoginAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try{
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            AccountDao acc = new AccountDao();
            Account account = acc.login(username, password);
            HttpSession session = request.getSession();

            if(account != null){
                session.setAttribute("account", account);
                request.getRequestDispatcher("/HomeAdmin").forward(request, response);
            }
            else
            {
                request.setAttribute("loginError","Incorrect username or password");
                request.getRequestDispatcher("/LoginAdmin").forward(request, response);
            }
        }catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }
}
