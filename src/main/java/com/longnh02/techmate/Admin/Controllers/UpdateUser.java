package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.UserDao;
import com.longnh02.techmate.Models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
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

        String image = "C:/Users/admin/Pictures/background/Scenery/1.jpg";
        Timestamp currTime = new Timestamp(new Date().getTime());

        User user = new User();

        UserDao userDao = new UserDao();
//        userDao.update(user, id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
