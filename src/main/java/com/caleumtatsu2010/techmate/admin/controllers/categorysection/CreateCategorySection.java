package com.caleumtatsu2010.techmate.admin.controllers.categorysection;

import com.caleumtatsu2010.techmate.dao.CategorySectionDao;
import com.caleumtatsu2010.techmate.models.category.CategorySection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CreateCategorySection", value = "/CreateCategorySection")
public class CreateCategorySection extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/views/admin/categorysection/CreateCategorySection.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategorySection categorySection = new CategorySection();
        categorySection.setId(Integer.parseInt(request.getParameter("id")));//admin
        categorySection.setName(request.getParameter("name"));

        CategorySectionDao cateSecDao = new CategorySectionDao();
        cateSecDao.insert(categorySection);
        doGet(request, response);
    }
}
