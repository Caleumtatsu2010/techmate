package com.caleumtatsu2010.techmate.controllers.admin.account;

import com.caleumtatsu2010.techmate.dao.*;
import com.caleumtatsu2010.techmate.models.account.Account;
import com.caleumtatsu2010.techmate.models.account.AccountType;
import com.caleumtatsu2010.techmate.models.product.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAccount", value = "/EditAccount")
public class EditAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("Account", new AccountDao().get(id));
        request.setAttribute("ListAccountType", new AccountTypeDao().getAll());

        request.getRequestDispatcher("/views/admin/account/EditAccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
