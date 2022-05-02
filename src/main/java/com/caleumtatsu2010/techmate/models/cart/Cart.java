package com.caleumtatsu2010.techmate.models.cart;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Cart {
    private int id;
    private int userId;
    private int total;
    private Date createdAt;
    private Date modifiedAt;
}
