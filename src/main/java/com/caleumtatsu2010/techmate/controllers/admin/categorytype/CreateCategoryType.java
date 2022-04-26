package com.caleumtatsu2010.techmate.controllers.admin.categorytype;

import com.caleumtatsu2010.techmate.dao.CategorySectionDao;
import com.caleumtatsu2010.techmate.dao.CategoryTypeDao;
import com.caleumtatsu2010.techmate.models.category.CategoryType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateCategoryType", value = "/CreateCategoryType")
public class CreateCategoryType extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CategorySectionDao cateSecDao = new CategorySectionDao();
        request.setAttribute("listCateSec", cateSecDao.getAll());
        request.getRequestDispatcher("/views/admin/categorytype/CreateCategoryType.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryType cateType = new CategoryType();
        cateType.setId(Integer.parseInt(request.getParameter("id")));
        cateType.setName(request.getParameter("name"));
        cateType.setDesc(request.getParameter("desc"));
        cateType.setCategorySectionId(request.getParameter("sku"));

        CategoryTypeDao categoryTypeDao = new CategoryTypeDao();
        categoryTypeDao.insert(cateType);
    }
}
