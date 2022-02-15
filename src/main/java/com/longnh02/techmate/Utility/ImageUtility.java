package com.longnh02.techmate.Utility;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Base64;

public class ImageUtility {

    public static String getInputStreamImage(InputStream image) {
        if(image != null)
        {
            try{
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = image.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

                byte[] imageBytes = outputStream.toByteArray();
                return Base64.getEncoder().encodeToString(imageBytes);
            }catch (Exception ex)
            {
                ex.printStackTrace();
            }
        }
        return null;
    }
}
