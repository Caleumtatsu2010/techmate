package com.caleumtatsu2010.techmate.controllers.admin.account;

import com.caleumtatsu2010.techmate.dao.AccountDao;
import com.caleumtatsu2010.techmate.models.account.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "AccountDetail", value = "/AccountDetail")
public class AccountDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        AccountDao accDao = new AccountDao();

        Account account = accDao.get(Integer.parseInt(id));

        request.setAttribute("Account", account);

        request.getRequestDispatcher("/views/admin/account/DetailAccount.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
