package com.caleumtatsu2010.techmate.controllers.admin.user;

import com.caleumtatsu2010.techmate.dao.UserDao;
import com.caleumtatsu2010.techmate.models.user.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexUser", value = "/IndexUser")
public class IndexUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        UserDao userdao = new UserDao();

        List<User> users = userdao.getAll();

        
        request.setAttribute("listuser", users);

        request.getRequestDispatcher("/views/admin/user/IndexUser.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
