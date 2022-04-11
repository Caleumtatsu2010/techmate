package com.caleumtatsu2010.techmate.models.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserAddress {
    private int id;
    private int userId;
    private String address_line1;
    private String address_line2;
    private String town;
    private String district;
    private String city;
    private String state_province;
    private String country;
    private String postalCode;
}
