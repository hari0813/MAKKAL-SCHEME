
package model;

import javax.persistence.*;

@Entity
@Table(name = "scheme")

public class Scheme {

    private String notification_id, scheme_name, scheme_category, scheme_type, launch_date, exp_date, doctor_id;

    private String target_beneficiaries, scheme_objective, list_of_documents, annual_income, benefits;

    private String age_limit, appliction_mode, state, panchayat;

    @Id
    @Column(name = "noticeid", length = 30)
    public String getNotification_id() {
        return notification_id;
    }

    public void setNotification_id(String notification_id) {
        this.notification_id = notification_id;
    }

    @Column(name = "schemename", length = 290)
    public String getScheme_name() {
        return scheme_name;
    }

    public void setScheme_name(String scheme_name) {
        this.scheme_name = scheme_name;
    }

    @Column(name = "schemecategory", length = 290)
    public String getScheme_category() {
        return scheme_category;
    }

    public void setScheme_category(String scheme_category) {
        this.scheme_category = scheme_category;
    }

    @Column(name = "schemetype", length = 230)
    public String getScheme_type() {
        return scheme_type;
    }

    public void setScheme_type(String scheme_type) {
        this.scheme_type = scheme_type;
    }

    @Column(name = "launchdate", length = 30)
    public String getLaunch_date() {
        return launch_date;
    }

    public void setLaunch_date(String launch_date) {
        this.launch_date = launch_date;
    }

    @Column(name = "expdate", length = 30)
    public String getExp_date() {
        return exp_date;
    }

    public void setExp_date(String exp_date) {
        this.exp_date = exp_date;
    }

    @Column(name = "doctorid", length = 30)
    public String getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(String doctor_id) {
        this.doctor_id = doctor_id;
    }

    @Column(name = "targetbeneficiaries", length = 1000)
    public String getTarget_beneficiaries() {
        return target_beneficiaries;
    }

    public void setTarget_beneficiaries(String target_beneficiaries) {
        this.target_beneficiaries = target_beneficiaries;
    }

    @Column(name = "schemeobjective", length = 1000)
    public String getScheme_objective() {
        return scheme_objective;
    }

    public void setScheme_objective(String scheme_objective) {
        this.scheme_objective = scheme_objective;
    }

    @Column(name = "listofdocuments", length = 1000)
    public String getList_of_documents() {
        return list_of_documents;
    }

    public void setList_of_documents(String list_of_documents) {
        this.list_of_documents = list_of_documents;
    }

    @Column(name = "annualincome", length = 230)
    public String getAnnual_income() {
        return annual_income;
    }

    public void setAnnual_income(String annual_income) {
        this.annual_income = annual_income;
    }

    @Column(name = "benefits", length = 530)
    public String getBenefits() {
        return benefits;
    }

    public void setBenefits(String benefits) {
        this.benefits = benefits;
    }

    @Column(name = "agelimit", length = 80)
    public String getAge_limit() {
        return age_limit;
    }

    public void setAge_limit(String age_limit) {
        this.age_limit = age_limit;
    }

    @Column(name = "applicationmode", length = 30)
    public String getAppliction_mode() {
        return appliction_mode;
    }

    public void setAppliction_mode(String appliction_mode) {
        this.appliction_mode = appliction_mode;
    }

    @Column(name = "state", length = 90)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Column(name = "panchayat", length = 100)
    public String getPanchayat() {
        return panchayat;
    }

    public void setPanchayat(String panchayat) {
        this.panchayat = panchayat;
    }

}
