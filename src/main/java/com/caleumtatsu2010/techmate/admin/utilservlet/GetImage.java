package com.caleumtatsu2010.techmate.admin.utilservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "GetImage", value = "/GetImage")
public class GetImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("image/jpeg");
//
//        String pathToWeb = getServletContext().getRealPath(File.separator);
//        File f = new File(pathToWeb + "avajavalogo.jpg");
//        BufferedImage bi = ImageIO.read(f);
//        OutputStream out = response.getOutputStream();
//        ImageIO.write(bi, "jpg", out);
//        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
