package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.ProductCategoryDao;
import com.longnh02.techmate.Dao.UserDao;
import com.longnh02.techmate.Models.ProductCategory;
import com.longnh02.techmate.Models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "CreateProductCategory", value = "/CreateProductCategory")
public class CreateProductCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        Timestamp currTime = new Timestamp(new Date().getTime());

        ProductCategory prodCate = new ProductCategory(id, name, desc, currTime, currTime);

        ProductCategoryDao prodCateDao = new ProductCategoryDao();
        prodCateDao.insert(prodCate);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);
    }
}
