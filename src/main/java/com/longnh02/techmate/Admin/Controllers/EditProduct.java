package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.*;
import com.longnh02.techmate.Models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditProduct", value = "/EditProduct")
public class EditProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ProductDao prodDao = new ProductDao();
        Product product = prodDao.get(id);
        ProductCategoryDao prod = new ProductCategoryDao();
        DiscountDao dis = new DiscountDao();
        SupplierDao sup = new SupplierDao();


        request.setAttribute("listcategory", prod.getAll());
        request.setAttribute("listdiscount", dis.getAll());
        request.setAttribute("listsupplier", sup.getAll());


        request.setAttribute("Product", product);

        request.getRequestDispatcher("EditProduct.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
