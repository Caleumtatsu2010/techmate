package com.longnh02.techmate.admin.controllers.categorytype;

import com.longnh02.techmate.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteCategoryType", value = "/DeleteCategoryType")
public class DeleteCategoryType extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao prod = new ProductDao();
        prod.delete(Integer.parseInt(request.getParameter("id")));
        request.getRequestDispatcher("/views/admin/product/IndexCategoryType").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
