package com.caleumtatsu2010.techmate.models.cart;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CartItem {
    private int id;
    private int productId;
    private int cartId;
    private int quantity;
}
