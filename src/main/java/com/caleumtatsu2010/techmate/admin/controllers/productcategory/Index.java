package com.caleumtatsu2010.techmate.admin.controllers.productcategory;


import com.caleumtatsu2010.techmate.dao.ProductCategoryDao;
import com.caleumtatsu2010.techmate.models.category.ProductCategory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexProductCategory", value = "/IndexProductCategory")
public class Index extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductCategoryDao prodCateDao = new ProductCategoryDao();

        List<ProductCategory> prodCates = prodCateDao.getAll();

        request.setAttribute("ProdCategories", prodCates);

        request.getRequestDispatcher("/views/admin/productcategory/IndexProductCategory.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
