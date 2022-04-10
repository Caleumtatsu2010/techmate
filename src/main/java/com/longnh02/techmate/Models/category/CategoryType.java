package com.longnh02.techmate.models.category;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CategoryType{
    private int id;
    private String name;
    private String desc;
    private String categorySectionId;
}
