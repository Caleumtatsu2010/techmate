package com.caleumtatsu2010.techmate.models.category;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductCategory {
    private int id;
    private String name;
    private String desc;
    private Timestamp createdAt;
    private Timestamp modifiedAt;
    private int categoryTypeId;
}
