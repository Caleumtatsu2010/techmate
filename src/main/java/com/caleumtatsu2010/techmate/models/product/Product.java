package com.caleumtatsu2010.techmate.models.product;
import com.caleumtatsu2010.techmate.utility.image.ImageUtility;
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
    private String currency;
    private String color;

    private int categoryId;
    private int discountId;
    private int quantity;
    private int supplierId;
    private String productShortDesc;
    private String detail;
//    private InputStream image;
    private String image;
//    public String getSeenImage() {
//        return ImageUtility.getInputStreamImage(this.image);
//    }
    private double star;
    private int ratings;

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", sku='" + sku + '\'' +
                ", price=" + price +
                ", currency='" + currency + '\'' +
                ", color='" + color + '\'' +
                ", categoryId=" + categoryId +
                ", discountId=" + discountId +
                ", quantity=" + quantity +
                ", supplierId=" + supplierId +
                ", productShortDesc='" + productShortDesc + '\'' +
                ", detail='" + detail + '\'' +
                ", image='" + image + '\'' +
                ", star=" + star +
                ", ratings=" + ratings +
                '}';
    }
}
