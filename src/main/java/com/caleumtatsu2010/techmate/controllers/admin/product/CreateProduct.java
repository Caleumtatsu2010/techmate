package com.caleumtatsu2010.techmate.controllers.admin.product;

import com.caleumtatsu2010.techmate.dao.DiscountDao;
import com.caleumtatsu2010.techmate.dao.ProductCategoryDao;
import com.caleumtatsu2010.techmate.dao.ProductDao;

import com.caleumtatsu2010.techmate.models.product.Product;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

//@MultipartConfig(maxFileSize = 16177215)
@WebServlet(name = "CreateProduct", value = "/CreateProduct")
public class CreateProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductCategoryDao prod = new ProductCategoryDao();
        DiscountDao dis = new DiscountDao();
        //load category, discount
        request.setAttribute("listcategory", prod.getAll());
        request.setAttribute("listdiscount", dis.getAll());
        request.getRequestDispatcher("/views/admin/product/CreateProduct.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new Product();

        product.setId(request.getParameter("id"));//admin
        product.setName(request.getParameter("name"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setCurrency(request.getParameter("currency"));
        product.setSubCategoryId(Integer.parseInt( request.getParameter("categoryid")));
        product.setDiscountId(Integer.parseInt( request.getParameter("discountid")));
        product.setQuantity(Integer.parseInt( request.getParameter("quantity")));
        product.setImage(request.getParameter("image"));

//        Part filePart = request.getPart("image");
//        product.setImage(filePart.getInputStream());


        ProductDao prodDao = new ProductDao();
        prodDao.insert(product);
    }
}
