package model;

import javax.persistence.*;

@Entity
@Table(name="visitor")
public class Visitor {
    
    private String username , password , firstname , lastname;
    
    private String address1 , address2 , street , city;
    
    private String pincode , mobile , emailid , genderl;
    
    private String aadhar_id, pan_no, date_of_birth, occupation;

    @Id
    @Column(name="username" , length = 30)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Column(name="password" , length = 50)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name="firstname" , length = 50)
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    @Column(name="lastname" , length = 50)
    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    @Column(name="address1" , length = 100)
    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    @Column(name="address2" , length = 100)
    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    @Column(name="street" , length = 50)
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Column(name="city" , length = 30)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Column(name="pincode" , length = 10)
    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    @Column(name="mobile" , length = 30)
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Column(name="emailid" , length = 150)
    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    @Column(name="gender" , length = 10)
    public String getGenderl() {
        return genderl;
    }

    public void setGenderl(String genderl) {
        this.genderl = genderl;
    }

    @Column(name = "aadharid", length = 150)
    public String getAadhar_id() {
        return aadhar_id;
    }

    public void setAadhar_id(String aadhar_id) {
        this.aadhar_id = aadhar_id;
    }

    @Column(name = "panno", length = 150)
    public String getPan_no() {
        return pan_no;
    }

    public void setPan_no(String pan_no) {
        this.pan_no = pan_no;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    @Column(name = "Occupation", length = 150)
    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    
    
}
