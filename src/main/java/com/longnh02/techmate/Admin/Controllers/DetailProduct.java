package com.longnh02.techmate.Admin.Controllers;

import com.longnh02.techmate.Dao.ProductDao;
import com.longnh02.techmate.Models.Product;
import com.longnh02.techmate.Models.Review;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailProduct", value = "/DetailProduct")
public class DetailProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        int id =Integer.parseInt(request.getParameter("id"));

        ProductDao prodDao = new ProductDao();
        Product product = prodDao.get(id);
        int quantity = prodDao.getQuantityById(product.getInventoryId());
        List<String> listcolor = prodDao.getColorsById(id);
        String categoryName = prodDao.getCategoryById(product.getCategoryId());
        String discount  = prodDao.getDiscount(product.getDiscountId());

        List<Review> listreview = prodDao.getReviews(id);

//        request.setAttribute("Discount", discount);
//        request.setAttribute("CategoryName", categoryName);

        request.setAttribute("Product", product);
        request.setAttribute("ListColors", listcolor);
//        request.setAttribute("Quantity", quantity);

        request.setAttribute("ListR", listreview);

        request.getRequestDispatcher("DetailProduct.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
