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
    private String id;
    private String name;
//    private String desc;
    private double price;
    private String currency;

    private int subCategoryId;
    private int discountId;
    private int quantity;
//    private int supplierId;
//    private String productShortDesc;
//    private String detail;
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
                ", price=" + price +
                ", currency='" + currency + '\'' +
                ", categoryId=" + subCategoryId +
                ", discountId=" + discountId +
                ", quantity=" + quantity +
                ", image='" + image + '\'' +
                ", star=" + star +
                ", ratings=" + ratings +
                '}';
    }
}
