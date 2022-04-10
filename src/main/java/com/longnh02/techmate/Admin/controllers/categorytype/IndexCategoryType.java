package com.longnh02.techmate.admin.controllers.categorytype;


import com.longnh02.techmate.dao.CategoryTypeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IndexCategoryType", value = "/IndexCategoryType")
public class IndexCategoryType extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CategoryTypeDao categoryTypeDao = new CategoryTypeDao();
        request.setAttribute("listCateType", categoryTypeDao.getAll());
        request.getRequestDispatcher("/views/admin/categorytype/IndexCategoryType.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
