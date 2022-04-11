package com.caleumtatsu2010.techmate.admin.controllers.user;

import com.caleumtatsu2010.techmate.dao.UserDao;
import com.caleumtatsu2010.techmate.models.user.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "UpdateUser", value = "/UpdateUser")
public class UpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");
        int mobilephone = Integer.parseInt(request.getParameter("mobile_phone"));
        int citizenid = Integer.parseInt(request.getParameter("citizen_id"));
        String email = request.getParameter("email");
        int businessphone =  Integer.parseInt( request.getParameter("business_phone"));

        InputStream image = request.getPart("image").getInputStream();

        Timestamp currTime = new Timestamp(new Date().getTime());

        User user = new User();

        UserDao userDao = new UserDao();
//        userDao.update(user, id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
