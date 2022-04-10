package com.longnh02.techmate.models.product;
import com.longnh02.techmate.utility.ImageUtility;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.InputStream;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    private int id;
    private String name;
    private String desc;
    private String sku;
    private double price;
    private String unitPrice;
    private String color;

    private int categoryId;
    private int discountId;
    private int quantity;
    private int supplierId;
    private String productShortDesc;
    private String detail;
    private InputStream image;

    public String getSeenImage() {
        return ImageUtility.getInputStreamImage(this.image);
    }
}
