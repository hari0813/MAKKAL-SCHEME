package model;

import javax.persistence.*;

@Entity
@Table(name="consultant")
public class Consultant {
    
    private String consultant_no , apply_date , purpose , age;
    
    private String addiction, duration, description, doctor_id, visitor_id;

    private String fullname, dob, gender, address;
    private String contact, email, scheme, income;
    private String bank, account, ifsc, documents;
    private String terms;


    @Id
    @Column(name="consultno" , length = 30)
    public String getConsultant_no() {
        return consultant_no;
    }

    public void setConsultant_no(String consultant_no) {
        this.consultant_no = consultant_no;
    }

    @Column(name="apply_date" , length = 30)
    public String getApply_date() {
        return apply_date;
    }

    public void setApply_date(String apply_date) {
        this.apply_date = apply_date;
    }

    @Column(name="purpose" , length = 100)
    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    @Column(name="age" , length = 5)
    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Column(name="addiction" , length = 100)
    public String getAddiction() {
        return addiction;
    }

    public void setAddiction(String addiction) {
        this.addiction = addiction;
    }

    @Column(name="duration" , length = 30)
    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    @Column(name="description" , length = 500)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name="doctorid" , length = 30)
    public String getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(String doctor_id) {
        this.doctor_id = doctor_id;
    }

    @Column(name="visitorid" , length = 30)
    public String getVisitor_id() {
        return visitor_id;
    }

    public void setVisitor_id(String visitor_id) {
        this.visitor_id = visitor_id;
    }
    @Column(name = "fullname", length = 100)
    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    @Column(name = "dob", length = 30)
    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    @Column(name = "gender", length = 10)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Column(name = "address", length = 255)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "contact", length = 15)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Column(name = "email", length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "scheme", length = 100)
    public String getScheme() {
        return scheme;
    }

    public void setScheme(String scheme) {
        this.scheme = scheme;
    }

    @Column(name = "income", length = 20)
    public String getIncome() {
        return income;
    }

    public void setIncome(String income) {
        this.income = income;
    }

    @Column(name = "bank", length = 100)
    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    @Column(name = "account", length = 50)
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Column(name = "ifsc", length = 20)
    public String getIfsc() {
        return ifsc;
    }

    public void setIfsc(String ifsc) {
        this.ifsc = ifsc;
    }

    @Column(name = "documents", length = 255)
    public String getDocuments() {
        return documents;
    }

    public void setDocuments(String documents) {
        this.documents = documents;
    }

    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms;
    }

    
    
}
