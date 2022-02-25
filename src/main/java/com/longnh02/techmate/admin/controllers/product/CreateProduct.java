package com.longnh02.techmate.admin.controllers.product;

import com.longnh02.techmate.dao.DiscountDao;
import com.longnh02.techmate.dao.ProductCategoryDao;
import com.longnh02.techmate.dao.ProductDao;

import com.longnh02.techmate.models.Product;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@MultipartConfig(maxFileSize = 16177215)
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

        request.getRequestDispatcher("CreateProduct.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Product product = new Product();
        product.setId(Integer.parseInt(request.getParameter("id")));//admin
        product.setName(request.getParameter("name"));
        product.setDesc(request.getParameter("desc"));
        product.setSku(request.getParameter("sku"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setUnitPrice(request.getParameter("unitprice"));
        product.setColor(request.getParameter("color"));
        product.setCategoryId(Integer.parseInt( request.getParameter("categoryid")));
        product.setDiscountId(Integer.parseInt( request.getParameter("discountid")));
        product.setQuantity(Integer.parseInt( request.getParameter("quantity")));
        product.setSupplierId(Integer.parseInt( request.getParameter("supplierid")));
        product.setProductShortDesc(request.getParameter("productshortdesc"));
        product.setDetail(request.getParameter("detail"));

        Part filePart = request.getPart("image");
        product.setImage(filePart.getInputStream());


        ProductDao prodDao = new ProductDao();
        prodDao.insert(product);
    }
}
