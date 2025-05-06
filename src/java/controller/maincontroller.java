
package controller;

import dbutil.DBContext;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Consultant;
import model.Government;
import model.Response;
import model.Scheme;
import model.Visitor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class maincontroller {

    @RequestMapping("/index")
    public ModelAndView redirectHome() {
        return new ModelAndView("index");
    }

    @RequestMapping("/gov_register")
    public ModelAndView redirectGovReg() {
        return new ModelAndView("gov_register");
    }

    @RequestMapping("/gov_register_data")
    public org.springframework.web.servlet.ModelAndView storeGovernmentData(HttpServletRequest request, HttpServletResponse response) {

        Government government = new Government();
        government.setGov_username(request.getParameter("gov_user_name"));
        government.setGov_password(request.getParameter("gov_password"));
        government.setAddress1(request.getParameter("address1"));
        government.setAddress2(request.getParameter("address2"));
        government.setCity(request.getParameter("city"));
        government.setEmailid(request.getParameter("emailid"));
        government.setPanchayat(request.getParameter("Panchayat"));
        government.setPanchayat_ID(request.getParameter("PanchayatId"));
        government.setSub_Division(request.getParameter("subdivition"));
        government.setState(request.getParameter("state"));
        government.setFirst_name(request.getParameter("first_name"));
        government.setGender(request.getParameter("gender"));
        government.setLast_name(request.getParameter("last_name"));
        government.setMobile(request.getParameter("mobile"));
        government.setPincode(request.getParameter("pincode"));
        government.setStreet(request.getParameter("street"));

        DBContext.getContext().createData(government);

        return new org.springframework.web.servlet.ModelAndView("government_register_success");
    }

    @RequestMapping("/gov_login")
    public ModelAndView redirectGovLogin() {
        return new ModelAndView("gov_login");
    }

    @RequestMapping("/gov_login_verify")
    public org.springframework.web.servlet.ModelAndView govLoginVerify(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String result_page = "";

        String username = request.getParameter("gov_user_name");
        String password = request.getParameter("gov_password");

        List data = DBContext.getContext().readData("from Government where username='" + username + "' ");
        Iterator ite = data.iterator();
        while (ite.hasNext()) {
            Government government = (Government) ite.next();
            String username_db = government.getGov_username();
            String password_db = government.getGov_password();

            if (username_db.equals(username)) {
                if (password_db.equals(password)) {
                    session.setAttribute("gov_user_name", username);
                    result_page = "gov_home";
                } else {
                    result_page = "gov_login";
                }
            } else {
                result_page = "gov_login";
            }
        }

        return new org.springframework.web.servlet.ModelAndView(result_page);
    }

    @RequestMapping("/gov_home")
    public ModelAndView redirectGovHome() {
        return new ModelAndView("gov_home");
    }

    @RequestMapping("/logout")
    public org.springframework.web.servlet.ModelAndView logout(HttpSession session) {
        session.invalidate();
        return new org.springframework.web.servlet.ModelAndView("index");
    }

    @RequestMapping("/create_scheme")
    public ModelAndView redirectCreateScheme() {
        return new ModelAndView("create_scheme");
    }

    @RequestMapping("/create_scheme_data")
    public org.springframework.web.servlet.ModelAndView storeCreatescheme(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String doctor_id = (String) session.getAttribute("gov_user_name");
        Scheme n = new Scheme();

        n.setNotification_id(request.getParameter("notice_id"));
        n.setScheme_name(request.getParameter("scheme_name"));
        n.setScheme_category(request.getParameter("scheme_category"));
        n.setScheme_type(request.getParameter("scheme_type"));
        n.setLaunch_date(request.getParameter("launch_date"));
        n.setExp_date(request.getParameter("exp_date"));
        n.setTarget_beneficiaries(request.getParameter("target_beneficiaries"));
        n.setScheme_objective(request.getParameter("scheme_objective"));
        n.setList_of_documents(request.getParameter("list_of_documents"));
        n.setAnnual_income(request.getParameter("annual_income"));
        n.setBenefits(request.getParameter("benefits"));
        n.setAge_limit(request.getParameter("age_limit"));
        n.setAppliction_mode(request.getParameter("application_mode"));
        n.setState(request.getParameter("state"));
        n.setPanchayat(request.getParameter("Panchayat"));
        n.setDoctor_id(doctor_id);

        DBContext.getContext().createData(n);
        return new org.springframework.web.servlet.ModelAndView("scheme_success");
    }

    @RequestMapping("/view_scheme")
    public ModelAndView redirectViewHome() {
        return new ModelAndView("view_scheme");
    }

    @RequestMapping("/visitor_home")
    public ModelAndView redirectvisitorHome() {
        return new ModelAndView("visitor_home");
    }

    @RequestMapping("/delete_notice")
    public org.springframework.web.servlet.ModelAndView deleteNotice(HttpServletRequest request) {
        String notice_id = request.getParameter("nid");
        Scheme n = new Scheme();
        n.setNotification_id(notice_id);

        DBContext.getContext().deleteData(n);
        return new org.springframework.web.servlet.ModelAndView("view_scheme");
    }

    @RequestMapping("/visitor_register")
    public ModelAndView redirectVisitorRegister() {
        return new ModelAndView("visitor_register");
    }

    @RequestMapping("/visitor_register_data")
    public org.springframework.web.servlet.ModelAndView storeVisitorData(HttpServletRequest request, HttpServletResponse response) {
        Visitor visitor = new Visitor();
        visitor.setAadhar_id(request.getParameter("aadhar_id"));
        visitor.setAddress1(request.getParameter("address1"));
        visitor.setAddress2(request.getParameter("address2"));
        visitor.setCity(request.getParameter("city"));
        visitor.setEmailid(request.getParameter("emailid"));
        visitor.setFirstname(request.getParameter("first_name"));
        visitor.setGenderl(request.getParameter("gender"));
        visitor.setLastname(request.getParameter("last_name"));
        visitor.setMobile(request.getParameter("mobile"));
        visitor.setPassword(request.getParameter("visitor_password"));
        visitor.setPincode(request.getParameter("pincode"));
        visitor.setPan_no(request.getParameter("pan_no"));
        visitor.setDate_of_birth(request.getParameter("user_birth"));
        visitor.setOccupation(request.getParameter("occupation"));
        visitor.setStreet(request.getParameter("street"));
        visitor.setUsername(request.getParameter("visitor_user_name"));
        DBContext.getContext().createData(visitor);
        return new org.springframework.web.servlet.ModelAndView("visitor_success");
    }

    @RequestMapping("/visitor_login")
    public org.springframework.web.servlet.ModelAndView visitorLogin() {
        return new org.springframework.web.servlet.ModelAndView("visitor_login");
    }

    @RequestMapping("/visitor_login_verify")
    public org.springframework.web.servlet.ModelAndView visitorLoginVerify(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

        String result_page = "";

        String username = request.getParameter("visitor_user_name");
        String password = request.getParameter("visitor_password");

        List data = DBContext.getContext().readData("from Visitor");
        Iterator ite = data.iterator();
        while (ite.hasNext()) {
            Visitor visitor = (Visitor) ite.next();
            String username_db = visitor.getUsername();
            String password_db = visitor.getPassword();

            if (username_db.equals(username)) {
                if (password_db.equals(password)) {
                    session.setAttribute("visitor_username", username);
                    result_page = "visitor_home";
                } else {
                    result_page = "visitor_login";
                }
            } else {
                result_page = "visitor_login";
            }
        }

        return new org.springframework.web.servlet.ModelAndView(result_page);
    }


    @RequestMapping("/scheme_report")
    public ModelAndView redirectSchemeReport() {
        return new ModelAndView("scheme_report");
    }

    @RequestMapping("/visitor_consultant")
    public org.springframework.web.servlet.ModelAndView visitorConsultant(HttpServletRequest request, Model m) {
        String doctor_id = request.getParameter("doc_id");
        m.addAttribute("doc_id", doctor_id);
        return new org.springframework.web.servlet.ModelAndView("visitor_consultant");
    }

    @RequestMapping("/visitor_problem_register_data")
    public org.springframework.web.servlet.ModelAndView visitorConsultRegisterData(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String visitor_id = (String) session.getAttribute("visitor_username");
        String doctor_id = request.getParameter("doctor_id");

        Consultant consult = new Consultant();
        consult.setFullname(request.getParameter("fullname"));
        consult.setAge(request.getParameter("age"));
        consult.setDob(request.getParameter("dob"));
        consult.setConsultant_no(request.getParameter("consult_id"));
        consult.setEmail(request.getParameter("email"));
        consult.setScheme(request.getParameter("scheme"));
        consult.setIncome(request.getParameter("income"));
        consult.setBank(request.getParameter("bank"));
        consult.setAccount(request.getParameter("account"));
        consult.setIfsc(request.getParameter("ifsc"));
        consult.setDocuments(request.getParameter("documents"));
        consult.setTerms(request.getParameter("terms"));
        consult.setContact(request.getParameter("contact"));
        consult.setAddress(request.getParameter("address"));
        consult.setDoctor_id(doctor_id);
        consult.setVisitor_id(visitor_id);
        DBContext.getContext().createData(consult);
        return new org.springframework.web.servlet.ModelAndView("visitor_home");

    }

    @RequestMapping("/visitor_report")
    public ModelAndView governmentViewVisitorReport() {
        return new ModelAndView("visitor_report");
    }

    @RequestMapping("/consultant_response")
    public org.springframework.web.servlet.ModelAndView doctorResponse(HttpServletRequest request, HttpSession session) {
        String consult_id = request.getParameter("cid");
        System.out.println(consult_id);
        session.setAttribute("consult_id", consult_id);
        return new org.springframework.web.servlet.ModelAndView("consultant_response");
    }

    @RequestMapping("/doctor_response_data")
    public org.springframework.web.servlet.ModelAndView storeDoctorResponse(HttpServletRequest request, HttpServletResponse response) {
        Response resp = new Response();
        resp.setConsult_no(request.getParameter("consult_id"));
        resp.setCounseling(request.getParameter("counseling"));
        resp.setDescription(request.getParameter("description"));
        resp.setResponse_date(request.getParameter("response_date"));
        resp.setResponse_id(request.getParameter("response_id"));
        resp.setStage(request.getParameter("stage"));
        resp.setVisitor_id(request.getParameter("visitor_id"));
       
        DBContext.getContext().createData(resp);
        return new org.springframework.web.servlet.ModelAndView("response_success");
    }

    @RequestMapping("/visitor_responses")
    public ModelAndView redirectVisitorRes() {
        return new ModelAndView("visitor_responses");
    }

    @RequestMapping("/get_visitor")
    public org.springframework.web.servlet.ModelAndView showVisitorData(HttpServletRequest request, HttpSession session) {
        String visitor_id = request.getParameter("vid");
        session.setAttribute("visitor_id", visitor_id);
        return new org.springframework.web.servlet.ModelAndView("get_visitor");
    }

    @RequestMapping("/get_consult")
    public org.springframework.web.servlet.ModelAndView showConsultData(HttpServletRequest request, HttpSession session) {
        String consult_id = request.getParameter("cid");
        session.setAttribute("consult_id", consult_id);
        return new org.springframework.web.servlet.ModelAndView("get_consult");
    }

}
