package com.caleumtatsu2010.techmate.controllers.admin.categorysection;

import com.caleumtatsu2010.techmate.dao.CategorySectionDao;
import com.caleumtatsu2010.techmate.models.category.CategorySection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexCategorySection", value = "/IndexCategorySection")
public class IndexCategorySection extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategorySectionDao dao = new CategorySectionDao();
        List<CategorySection> list = dao.getAll();

        request.setAttribute("listCateSection", list);
        request.getRequestDispatcher("/views/admin/categorysection/IndexCategoryType.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
