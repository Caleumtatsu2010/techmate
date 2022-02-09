package com.longnh02.techmate.Admin.Controllers;


import com.longnh02.techmate.Dao.ProductCategoryDao;
import com.longnh02.techmate.Models.ProductCategory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexProductCategory", value = "/IndexProductCategory")
public class IndexProductCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductCategoryDao prodCateDao = new ProductCategoryDao();

        List<ProductCategory> prodCates = prodCateDao.getAll();

        request.setAttribute("ProdCategories", prodCates);

        request.getRequestDispatcher("IndexProductCategory.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
