package com.longnh02.techmate.admin.controllers.account;

import com.longnh02.techmate.dao.AccountDao;
import com.longnh02.techmate.models.account.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexAccount", value = "/IndexAccount")
public class IndexAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         AccountDao accDao = new AccountDao();

        List<Account> accounts = accDao.getAll();

        request.setAttribute("listAccount", accounts);

        request.getRequestDispatcher("/views/admin/account/IndexAccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
