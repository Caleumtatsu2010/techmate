package com.longnh02.techmate.models;

public class Supplier {
    private int id;
    private String name;
    private String desc;
    private String emailAddress;
    private int businessPhone;
    private int mobilePhone;
    private String faxNumber;
    private String address_line1;
    private String address_line2;
    private String town;
    private String district;
    private String city;
    private String state_province;
    private String country;
    private String postalCode;

    public Supplier() {
    }

    public Supplier(int id, String name, String desc, String emailAddress, int businessPhone, int mobilePhone, String faxNumber, String address_line1, String address_line2, String town, String district, String city, String state_province, String country, String postalCode) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.emailAddress = emailAddress;
        this.businessPhone = businessPhone;
        this.mobilePhone = mobilePhone;
        this.faxNumber = faxNumber;
        this.address_line1 = address_line1;
        this.address_line2 = address_line2;
        this.town = town;
        this.district = district;
        this.city = city;
        this.state_province = state_province;
        this.country = country;
        this.postalCode = postalCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
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

    public String getFaxNumber() {
        return faxNumber;
    }

    public void setFaxNumber(String faxNumber) {
        this.faxNumber = faxNumber;
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

    @Override
    public String toString() {
        return "Supplier{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", businessPhone=" + businessPhone +
                ", mobilePhone=" + mobilePhone +
                ", faxNumber='" + faxNumber + '\'' +
                ", address_line1='" + address_line1 + '\'' +
                ", address_line2='" + address_line2 + '\'' +
                ", town='" + town + '\'' +
                ", district='" + district + '\'' +
                ", city='" + city + '\'' +
                ", state_province='" + state_province + '\'' +
                ", country='" + country + '\'' +
                ", postalCode='" + postalCode + '\'' +
                '}';
    }
}
