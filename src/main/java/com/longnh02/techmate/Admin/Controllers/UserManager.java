package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.AccountDao;
import com.longnh02.techmate.Dao.UserDao;
import com.longnh02.techmate.Models.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserManager", value = "/UserManager")
public class UserManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");


        
        UserDao userDao = new UserDao();
        userDao.insert(user);

        request.setAttribute("listAccount", accounts);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
