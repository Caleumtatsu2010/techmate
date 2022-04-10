package com.longnh02.techmate.admin.controllers.user;

import com.longnh02.techmate.dao.UserDao;
import com.longnh02.techmate.models.user.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
@WebServlet(name = "CreateUser", value = "/CreateUser")
public class CreateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getRequestDispatcher("/views/admin/user/CreateUser.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        Part filePart = request.getPart("image");
        user.setImage(filePart.getInputStream());

        Timestamp currTime = new Timestamp(new Date().getTime());
        user.setCreatedAt(currTime);
        user.setModifiedAt(currTime);

        UserDao userDao = new UserDao();
        userDao.insert(user);
    }
}
