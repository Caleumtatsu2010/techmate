package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.ProductDao;
import com.longnh02.techmate.Models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditProduct", value = "/EditProduct")
public class EditProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        product.setId(Integer.parseInt(request.getParameter("id")));

        ProductDao prodDao = new ProductDao();
        Product product = prodDao.get("id");

        request.setAttribute("Product", product);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
