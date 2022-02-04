package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.AccountDao;
import com.longnh02.techmate.Models.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AccountManager", value = "/AccountManager")
public class AccountManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
         AccountDao accDao = new AccountDao();

        List<Account> listAcc = accDao.getAll();

        request.setAttribute("listAccount", listAcc);

        request.getRequestDispatcher("AccountManager.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
