package com.caleumtatsu2010.techmate.controllers.admin.product;

import com.caleumtatsu2010.techmate.dao.ProductDao;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProduct", value = "/DeleteProduct")
public class DeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao prod = new ProductDao();
        prod.delete(Integer.parseInt(request.getParameter("id")));
        request.getRequestDispatcher("/views/admin/product/DeleteProduct").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
