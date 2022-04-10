package com.longnh02.techmate.models.user;


import com.longnh02.techmate.utility.ImageUtility;

import java.io.InputStream;
import java.sql.Timestamp;

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

    public User() {
    }

    public User(int id, int accountId, String firstName, String lastName, int citizenId, String email, int mobilePhone, int businessPhone, InputStream image, Timestamp createdAt, Timestamp modifiedAt) {
        this.id = id;
        this.accountId = accountId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.citizenId = citizenId;
        this.email = email;
        this.mobilePhone = mobilePhone;
        this.businessPhone = businessPhone;
        this.image = image;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getCitizenId() {
        return citizenId;
    }

    public void setCitizenId(int citizenId) {
        this.citizenId = citizenId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(int mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    public int getBusinessPhone() {
        return businessPhone;
    }

    public void setBusinessPhone(int businessPhone) {
        this.businessPhone = businessPhone;
    }

    public InputStream getImage() {
        return image;
    }

    public void setImage(InputStream image) {
        this.image = image;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Timestamp modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    public String getSeenImage() {
        return ImageUtility.getInputStreamImage(this.image);
    }
}