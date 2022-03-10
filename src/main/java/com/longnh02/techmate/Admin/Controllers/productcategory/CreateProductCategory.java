package com.longnh02.techmate.admin.controllers.productcategory;



import com.longnh02.techmate.dao.ProductCategoryDao;
import com.longnh02.techmate.models.ProductCategory;

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
        request.getRequestDispatcher("/views/admin/productcategory/CreateProductCategory.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");

        Timestamp currTime = new Timestamp(new Date().getTime());

        ProductCategory prodCate = new ProductCategory(id, name, desc, currTime, currTime);

        ProductCategoryDao prodCateDao = new ProductCategoryDao();
        prodCateDao.insert(prodCate);
    }
}
