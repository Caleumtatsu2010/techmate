package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.ProductCategoryDao;
import com.longnh02.techmate.Dao.ProductDao;
import com.longnh02.techmate.Dao.UserDao;
import com.longnh02.techmate.Models.Product;
import com.longnh02.techmate.Models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "CreateProduct", value = "/CreateProduct")
public class CreateProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        ProductCategoryDao prod = new ProductCategoryDao();

        request.setAttribute("listcategory", prod.getAll());

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
        product.setCategoryId(Integer.parseInt( request.getParameter("categoryid")));
        product.setDiscountId(Integer.parseInt( request.getParameter("discountid")));
        product.setInventoryId(Integer.parseInt( request.getParameter("inventoryid")));
        product.setSupplierId(Integer.parseInt( request.getParameter("supplierid")));
        product.setDetail(request.getParameter("detail"));
        product.setProductShortDesc(request.getParameter("productshortdesc"));

        Part filePart = request.getPart("image");
        product.setImage(filePart.getInputStream());


        ProductDao prodDao = new ProductDao();
        prodDao.insert(product);
    }
}
