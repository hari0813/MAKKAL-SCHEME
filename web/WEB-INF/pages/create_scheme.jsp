<%-- 
    Document   : create_scheme
    Created on : 3 Mar, 2025, 6:33:11 PM
    Author     : Hari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <html>
        <head>

            <link rel="icon" href="images/Tamil_Nadu_emb.png">
            <title>MAKKAL SCHEME</title>
            <link rel="stylesheet" href="css/style.css"/>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
            <script src="js/scriptagri.js"></script>
        </head>

        <body>

            <header class="site-header">
                <div class="header">
                    <div class="logo">
                        <img src="images/Emblem_of_India.png" alt="Emblem of India" />
                        <img src="images/har_ghar_tiranga.png" alt="Emblem of India " />
                    </div>

                    <div class="title">
                        <h1>MAKKAL SCHEME PORTAL</h1>
                        <h2>Collobrate-District TAMILNADU</h2>
                        <p>Government of Tamil Nadu</p>
                    </div>
                    <div class="logo-1">
                        <img src="images/Tamil_Nadu_emb.png" alt="none" />
                    </div>
                </div>
            </header>

            <!-- Menu Bar start -->

            <nav id="site-navigation-menu" class="site-navigation-menu" aria-label="Clickable Menu Demonstration">
                <ul class="main-menu clicky-menu no-js">
                    <li>
                        <a href="gov_home.html">HOME</a>
                    </li>
                    <li>
                        <a href="#">
                            SCHEMES
                            <svg aria-hidden="true" width="16" height="16">
                            <use xlink:href="#arrow" />
                            </svg>
                        </a>
                        <ul style="z-index: 2;">
                            <li><a href="create_scheme.html">Create Scheme</a></li>
                            <li><a href="view_scheme.html">Scheme Reports</a></li>
                        </ul>
                    </li>

                    




                    <li>
                        <a href="logout.html">
                            LOGOUT
                            <svg aria-hidden="true" width="16" height="16">
                            <use xlink:href="#arrow" />
                            </svg>
                        </a>
                    </li>






                </ul>
            </nav>




            <!-- Menu Bar end -->
            <%
                java.util.Random r = new java.util.Random();
                int random_id = r.nextInt(50000);
                String notification_id = "Notice" + random_id;
            %>


            <!-- Menu Bar end -->


            <!-- Form Start -->

            <form name="create_scheme" method="post" action="create_scheme_data.html">

                <div class="form_main">
                    <div class="form_heading">
                        <p>NOTIFICATION</p>
                    </div>
                    <br>
                    <div class="form_section">

                        <div class="row">


                            <div class="input-group">
                                <label>Notification ID</label>
                                <input type="text" name="notice_id" value="<%=notification_id%>" readonly="readonly"/>
                            </div>
                            <div class="input-group">
                                <label>Scheme Name</label>
                                <input type="text" name="scheme_name" required="required"
                                       oninput="this.setCustomValidity('')"
                                       oninvalid="this.setCustomValidity('Please Enter Scheme Name')"
                                       />
                            </div>

                            <div class="input-group">
                                <label for="schemeCategory">Scheme Category</label>
                                <select id="schemeCategory" name="scheme_category" required
                                        oninput="this.setCustomValidity('')"
                                        oninvalid="this.setCustomValidity('Please Enter Scheme Category')">
                                    <option value="">-- Select Category --</option>
                                    <option value="Welfare">Welfare</option>
                                    <option value="Education">Education</option>
                                    <option value="Employment">Employment</option>
                                    <option value="Health">Health</option>
                                    <option value="Financial Assistance">Financial Assistance</option>
                                </select>
                            </div>

                            <div class="input-group">
                                <label for="schemeType">Scheme Type</label>
                                <select id="schemeType" name="scheme_type" required
                                        oninput="this.setCustomValidity('')"
                                        oninvalid="this.setCustomValidity('Please Enter Scheme Type')">
                                    <option value="">-- Select Type --</option>
                                    <option value="Subsidy">Subsidy</option>
                                    <option value="Loan">Loan</option>
                                    <option value="Grant">Grant</option>
                                    <option value="Pension">Pension</option>
                                    <option value="Insurance">Insurance</option>
                                </select>
                            </div>
                            <div class="input-group">
                                <label>Launch Date</label>
                                <input type="datetime-local" name="launch_date"
                                       required="required"
                                       oninput="this.setCustomValidity('')"
                                       oninvalid="this.setCustomValidity('Please Enter Intro Date')"
                                       />
                            </div>

                            <div class="input-group">
                                <label>Exp Date</label>
                                <input type="datetime-local" name="exp_date"
                                       required="required"
                                       oninput="this.setCustomValidity('')"
                                       oninvalid="this.setCustomValidity('Please Enter Exp Date')"
                                       />
                            </div>

                        </div>


                        <div class="row">

                            <div class="input-group">
                                <label>Target Beneficiaries</label>
                                <input type="text" name="target_beneficiaries"
                                       required="required"
                                       oninput="this.setCustomValidity('')"
                                       oninvalid="this.setCustomValidity('Please Enter Target_Beneficiaries')"
                                       />
                            </div>

                            <div class="input-group">
                                <label for="objective">Scheme Objective:</label>
                                <textarea id="objective" name="scheme_objective" rows="2" placeholder="Describe the purpose of the scheme"required="required"
                                          oninput="this.setCustomValidity('')"
                                          oninvalid="this.setCustomValidity('Please Enter Scheme_Objective')"></textarea>

                            </div>

                            <div class="input-group">
                                <label for="objective">List of Documents:</label>
                                <textarea id="objective" name="list_of_documents" rows="2" placeholder="Describe the purpose of the scheme"required="required"
                                          oninput="this.setCustomValidity('')"
                                          oninvalid="this.setCustomValidity('Please Enter List_Documents')"></textarea>

                            </div>


                            <div class="input-group">
                                <label>Annual Income</label>
                                <input type="text" name="annual_income"
                                       required="required"
                                       oninput="this.setCustomValidity('')"
                                       oninvalid="this.setCustomValidity('Please Enter Annual Income')"/>
                            </div>

                            <div class="input-group">
                                <label>Benefits</label>

                                <input type="text" id="benefitAmount" name="benefits"
                                       required="required"
                                       oninput="this.setCustomValidity('')"
                                       oninvalid="this.setCustomValidity('Please Enter Benefits')"
                                       placeholder="e.g., ?10,000 one-time, ?5,000 per month"
                                       />
                            </div>


                        </div>

                    </div>


                    <div class="row">
                        <div class="input-group">
                            <label for="ageLimit">Age Limit:</label>
                            <input type="text" id="ageLimit" name="age_limit" placeholder="e.g., 18-60 years"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Age Limit')">
                        </div>

                        <div class="input-group">
                            <label for="applicationMode">Application Mode:</label>
                            <select id="applicationMode" name="application_mode"
                                    required="required"
                                    oninput="this.setCustomValidity('')"
                                    oninvalid="this.setCustomValidity('Please Enter Application_Mode')">
                                <option value="">-- Select Mode --</option>
                                <option value="Online">Online</option>
                                <option value="Offline">Offline</option>
                                <option value="Both">Both</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <label>State</label>
                            <input type="text" name="state"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter state')"
                                   />
                        </div>



                        <div class="input-group">
                            <label>Panchayat </label>
                            <input type="text" name="Panchayat"

                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Panchayat')"
                                   />
                        </div>




                    </div>


                    <div class="row">
                        <div class="input-group">
                        </div>
                        <div class="input-group">
                        </div>
                        <div class="input-group">

                        </div>
                        <div class="input-group" style="display: flex;flex-direction:row;">
                            <input type="submit" name="btnsubmin" value="Add" class="btnclass1"/>
                            <input type="reset" name="btncancel" value="Cancel" class="btnclass2"/>
                        </div>
                    </div>


                </div>
            </div>
        </form>

        <!-- Form End -->






    </body>

</html>
</body>
</html>
