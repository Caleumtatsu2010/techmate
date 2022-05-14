package com.caleumtatsu2010.techmate.controllers.admin.loginout;

import com.caleumtatsu2010.techmate.dao.AccountDao;
import com.caleumtatsu2010.techmate.models.account.Account;
import com.caleumtatsu2010.techmate.utility.security.password.hasing.SHA256;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/views/admin/login/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            String username = request.getParameter("username");
            String password = request.getParameter("password");
//            String repassword = request.getParameter("repassword");
            AccountDao acc = new AccountDao();
            // same salt should be passed
            byte[] salt = SHA256.getSalt();//generate new salt and store to db
            acc.insert(new Account(1, username, SHA256.getSecurePassword(password, salt), "privatekey14-5-2022", salt, null, null, 2, "active"));
        }catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
