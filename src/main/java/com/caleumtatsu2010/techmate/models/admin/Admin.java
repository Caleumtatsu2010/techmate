package com.caleumtatsu2010.techmate.models.admin;

import java.util.Date;

public class Admin {

    private int id;
    private int accountId;
    private String firstName;
    private String lastName;
    private int businessPhone;
    private int mobilePhone;
    private int citizen_id;
    private String email;

    private String image;
    private String address_line1;
    private String address_line2;
    private String town;
    private String district;
    private String city;
    private String state_province;
    private String country;
    private String postalCode;
    private int typeId;
    private Date lastLogin;
    private Date createdAt;
    private Date modifiedAt;

    public Admin(int id, int accountId, String firstName, String lastName, int businessPhone, int mobilePhone, int citizen_id, String email, String image, String address_line1, String address_line2, String town, String district, String city, String state_province, String country, String postalCode, int typeId, Date lastLogin, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.accountId = accountId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.businessPhone = businessPhone;
        this.mobilePhone = mobilePhone;
        this.citizen_id = citizen_id;
        this.email = email;
        this.image = image;
        this.address_line1 = address_line1;
        this.address_line2 = address_line2;
        this.town = town;
        this.district = district;
        this.city = city;
        this.state_province = state_province;
        this.country = country;
        this.postalCode = postalCode;
        this.typeId = typeId;
        this.lastLogin = lastLogin;
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

    public int getBusinessPhone() {
        return businessPhone;
    }

    public void setBusinessPhone(int businessPhone) {
        this.businessPhone = businessPhone;
    }

    public int getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(int mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    public int getCitizen_id() {
        return citizen_id;
    }

    public void setCitizen_id(int citizen_id) {
        this.citizen_id = citizen_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAddress_line1() {
        return address_line1;
    }

    public void setAddress_line1(String address_line1) {
        this.address_line1 = address_line1;
    }

    public String getAddress_line2() {
        return address_line2;
    }

    public void setAddress_line2(String address_line2) {
        this.address_line2 = address_line2;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState_province() {
        return state_province;
    }

    public void setState_province(String state_province) {
        this.state_province = state_province;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", accountId=" + accountId +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", businessPhone=" + businessPhone +
                ", mobilePhone=" + mobilePhone +
                ", citizen_id=" + citizen_id +
                ", email='" + email + '\'' +
                ", image='" + image + '\'' +
                ", address_line1='" + address_line1 + '\'' +
                ", address_line2='" + address_line2 + '\'' +
                ", town='" + town + '\'' +
                ", district='" + district + '\'' +
                ", city='" + city + '\'' +
                ", state_province='" + state_province + '\'' +
                ", country='" + country + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", typeId=" + typeId +
                ", lastLogin=" + lastLogin +
                ", createdAt=" + createdAt +
                ", modifiedAt=" + modifiedAt +
                '}';
    }
}
