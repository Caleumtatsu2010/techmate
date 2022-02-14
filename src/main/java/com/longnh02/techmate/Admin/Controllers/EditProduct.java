package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.*;
import com.longnh02.techmate.Models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@MultipartConfig(maxFileSize = 16177215)
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

        Product product = new Product();

        int id = Integer.parseInt(request.getParameter("id"));
        product.setId(id);//hidden

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
        prodDao.update(product, id);

    }
}
