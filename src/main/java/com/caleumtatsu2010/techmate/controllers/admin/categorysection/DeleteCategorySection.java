package com.caleumtatsu2010.techmate.controllers.admin.categorysection;

import com.caleumtatsu2010.techmate.dao.CategorySectionDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCategorySection", value = "/DeleteCategorySection")
public class DeleteCategorySection extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategorySectionDao cateSec = new CategorySectionDao();
        cateSec.delete(Integer.parseInt(request.getParameter("id")));
        request.getRequestDispatcher("/views/admin/categorysection/IndexCategorySection").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
