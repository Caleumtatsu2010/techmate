package com.caleumtatsu2010.techmate.controllers.admin.product;


import com.caleumtatsu2010.techmate.dao.ProductDao;
import com.caleumtatsu2010.techmate.models.product.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexProduct", value = "/IndexProduct")
public class IndexProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDao prodDao = new ProductDao();

        List<Product> products = prodDao.getAll();

        request.setAttribute("listProduct", products);

        request.getRequestDispatcher("/views/admin/product/IndexProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
