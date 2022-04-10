package com.longnh02.techmate.admin.controllers.product;

import com.longnh02.techmate.dao.*;
import com.longnh02.techmate.models.product.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@MultipartConfig(maxFileSize = 16177215)
@WebServlet(name = "EditCategoryType", value = "/EditCategoryType")
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

        request.getRequestDispatcher("/views/admin/product/EditCategoryType.jsp").forward(request, response);


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
