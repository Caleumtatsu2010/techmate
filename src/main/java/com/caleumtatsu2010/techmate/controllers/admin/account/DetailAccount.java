package com.caleumtatsu2010.techmate.controllers.admin.account;

import com.caleumtatsu2010.techmate.dao.AccountDao;
import com.caleumtatsu2010.techmate.models.account.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "DetailAccount", value = "/DetailAccount")
public class DetailAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        request.setAttribute("Account", new AccountDao().get(Integer.parseInt(id)));
        request.getRequestDispatcher("/views/admin/account/DetailAccount.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
