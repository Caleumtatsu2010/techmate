package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.AccountDao;
import com.longnh02.techmate.Dao.UserDao;
import com.longnh02.techmate.Models.Account;
import com.longnh02.techmate.Models.User;

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
        request.setCharacterEncoding("UTF-8");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        int mobile_phone =Integer.parseInt(request.getParameter("mobile_phone"));
        int citizen_id = Integer.parseInt(request.getParameter("citizen_id"));
        String email = request.getParameter("email");
        int business_phone =Integer.parseInt( request.getParameter("business_phone"));
        //String image = request.getParameter("image");
        String image= "C:/Users/longnh02/Pictures/Saved Pictures/touka.jpg";
        User user = new User();
        user.setAccountId(1);//admin
        user.setFirstName(first_name);
        user.setLastName(last_name);
        user.setMobilePhone(mobile_phone);
        user.setCitizenId(citizen_id);
        user.setEmail(email);
        user.setBusinessPhone(business_phone);
        user.setImage(image);


        UserDao userDao = new UserDao();
        userDao.insert(user);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
