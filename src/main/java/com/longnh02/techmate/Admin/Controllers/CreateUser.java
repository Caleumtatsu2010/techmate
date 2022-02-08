package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.UserDao;
import com.longnh02.techmate.Models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "CreateUser", value = "/CreateUser")
public class CreateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        //String image = request.getParameter("image");

        User user = new User();
        user.setAccountId(1);//admin
        user.setFirstName(request.getParameter("first_name"));
        user.setLastName(request.getParameter("last_name"));
        user.setMobilePhone(Integer.parseInt(request.getParameter("mobile_phone")));
        user.setCitizenId(Integer.parseInt(request.getParameter("citizen_id")));
        user.setEmail(request.getParameter("email"));
        user.setBusinessPhone(Integer.parseInt( request.getParameter("business_phone")));

        user.setImage("C:/Users/admin/Pictures/background/Scenery/1.jpg");
        Timestamp currTime = new Timestamp(new Date().getTime());
        user.setCreatedAt(currTime);
        user.setModifiedAt(currTime);

        UserDao userDao = new UserDao();
        userDao.insert(user);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
