
package model;

import javax.persistence.*;

@Entity
@Table(name = "government")
public class Government {

    private String gov_username, gov_password, first_name, last_name;

    private String address1, address2, street, city, pincode;

    private String emailid, mobile, gender;

    private String State, Sub_Division, Panchayat, Panchayat_ID;

    @Id
    @Column(name = "username", length = 50)
    public String getGov_username() {
        return gov_username;
    }

    public void setGov_username(String gov_username) {
        this.gov_username = gov_username;
    }

    @Column(name = "password", length = 50)
    public String getGov_password() {
        return gov_password;
    }

    public void setGov_password(String gov_password) {
        this.gov_password = gov_password;
    }

    @Column(name = "firstname", length = 50)
    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    @Column(name = "lastname", length = 50)
    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    @Column(name = "address1", length = 50)
    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    @Column(name = "address2", length = 50)
    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    @Column(name = "street", length = 50)
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Column(name = "city", length = 50)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Column(name = "pincode", length = 10)
    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    @Column(name = "emailid", length = 80)
    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    @Column(name = "mobile", length = 50)
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Column(name = "gender", length = 10)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Column(name = "state", length = 50)
    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    @Column(name = "sub_divistion", length = 40)
    public String getSub_Division() {
        return Sub_Division;
    }

    public void setSub_Division(String Sub_Division) {
        this.Sub_Division = Sub_Division;
    }
    @Column(name = "panyat", length = 40)
    public String getPanchayat() {
        return Panchayat;
    }

    public void setPanchayat(String Panchayat) {
        this.Panchayat = Panchayat;
    }

    @Column(name = "Panchayat_id", length = 40)
    public String getPanchayat_ID() {
        return Panchayat_ID;
    }

    public void setPanchayat_ID(String Panchayat_ID) {
        this.Panchayat_ID = Panchayat_ID;
    }

}
