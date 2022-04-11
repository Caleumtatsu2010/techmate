package com.caleumtatsu2010.techmate.models.user;


import com.caleumtatsu2010.techmate.utility.image.ImageUtility;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.InputStream;
import java.sql.Timestamp;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private int accountId;
    private String firstName;
    private String lastName;
    private int citizenId;
    private String email;
    private int mobilePhone;
    private int businessPhone;
    private InputStream image;
    private Timestamp createdAt;
    private Timestamp modifiedAt;

    public String getSeenImage() {
        return ImageUtility.getInputStreamImage(this.image);
    }
}