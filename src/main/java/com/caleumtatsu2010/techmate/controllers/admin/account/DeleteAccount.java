package com.caleumtatsu2010.techmate.controllers.admin.account;

import com.caleumtatsu2010.techmate.dao.AccountDao;
import com.caleumtatsu2010.techmate.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteAccount", value = "/DeleteAccount")
public class DeleteAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        new AccountDao().delete(Integer.parseInt(request.getParameter("id")));
        request.getRequestDispatcher("/IndexAccount").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
