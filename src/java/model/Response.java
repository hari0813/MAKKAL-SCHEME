package model;

import javax.persistence.*;

@Entity
@Table(name="response")
public class Response {
    
    private String doctor_id , visitor_id , consult_no;
    
    private String response_id , response_date , counseling , medicines;
    
    private String foods, stage, next_date, description, stage1;

    @Column(name="doctorid", length = 30)
    public String getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(String doctor_id) {
        this.doctor_id = doctor_id;
    }

    @Column(name="visitorid", length = 30)
    public String getVisitor_id() {
        return visitor_id;
    }

    public void setVisitor_id(String visitor_id) {
        this.visitor_id = visitor_id;
    }

    @Column(name="consultid", length = 30)
    public String getConsult_no() {
        return consult_no;
    }

    public void setConsult_no(String consult_no) {
        this.consult_no = consult_no;
    }

    @Id
    @Column(name="responseid", length = 30)
    public String getResponse_id() {
        return response_id;
    }

    public void setResponse_id(String response_id) {
        this.response_id = response_id;
    }

    @Column(name="resdate", length = 20)
    public String getResponse_date() {
        return response_date;
    }

    public void setResponse_date(String response_date) {
        this.response_date = response_date;
    }

    @Column(name="counselling", length = 200)
    public String getCounseling() {
        return counseling;
    }

    public void setCounseling(String counseling) {
        this.counseling = counseling;
    }

    @Column(name="medicines", length = 250)
    public String getMedicines() {
        return medicines;
    }

    public void setMedicines(String medicines) {
        this.medicines = medicines;
    }

    @Column(name="foods", length = 300)
    public String getFoods() {
        return foods;
    }

    public void setFoods(String foods) {
        this.foods = foods;
    }

    @Column(name="stage", length = 15)
    public String getStage() {
        return stage;
    }

    public void setStage(String stage) {
        this.stage = stage;
    }

    @Column(name="nextdate", length = 30)
    public String getNext_date() {
        return next_date;
    }

    public void setNext_date(String next_date) {
        this.next_date = next_date;
    }

    @Column(name="description", length = 500)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStage1() {
        return stage1;
    }

    public void setStage1(String stage1) {
        this.stage1 = stage1;
    }

    
    
}
