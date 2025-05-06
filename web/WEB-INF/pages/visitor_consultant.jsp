<%@page import="model.Scheme"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbutil.DBContext"%>
<%@page import="java.util.List"%>
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
              <a href="visitor_home.html">HOME</a>
            </li>
            <li>
              <a href="#">
                DOCTORS
                <svg aria-hidden="true" width="16" height="16">
                  <use xlink:href="#arrow" />
                </svg>
              </a>
              <ul>
                <li><a href="view_doctors.html">View Doctors</a></li>                                      
              </ul>
            </li>

            <li>
              <a href="#">
                STATUS
                <svg aria-hidden="true" width="16" height="16">
                  <use xlink:href="#arrow" />
                </svg>
              </a>
              <ul>
                <li><a href="view_appointment.html">Appointment</a></li>
                <li><a href="view_treatment.html">Treatment Report </a></li>                 
              </ul>
            </li>


            <li>
              <a href="#">
                ANNOUNCEMENT
                <svg aria-hidden="true" width="16" height="16">
                  <use xlink:href="#arrow" />
                </svg>
              </a>
              <ul>
                <li><a href="visitor_register.html">Doctor Notifications</a></li>
                <li><a href="visitor_login.html">Group Members</a></li>                               
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
        
        
            <!-- Table Report  -->
            
            <div class="table-horizontal-container card" style="margin-top:2%;height:auto;padding-top:2%;padding-bottom:2%;">
                <div>
                    <center><h4>Scheme Apply</h4></center> <br><br>
                </div>  
                  
               
                <div class="card-header" style="background-color: #65000B;color:white;margin-top:2%">
                    <center>Scheme Records</center>
                </div>                
                
                <div class="table-horizontal-container" style="overflow: scroll;margin:20px;">
                  <table class="unfixed-table table-bordered table-striped" cellpadding="10px" rules="rows" align="center">
                      
                      <tbody>
                        
                          <%


                              java.util.Random r = new java.util.Random();
                              String consult_id = "Consult" + r.nextInt(50000);
                              List data = DBContext.getContext().readData("from Scheme");
                                  Iterator ite = data.iterator();
                                  while (ite.hasNext()) {
                                      Scheme d = (Scheme) ite.next();

                          %>


                            <tr>
                                <td style="background-color: purple;color:white">Scheme Name</td>
                                <td><%=d.getScheme_name()%></td>
                            </tr>

                          <tr>
                              <td style="background-color: purple;color:white">Scheme Type</td>
                              <td><%=d.getScheme_type()%></td>
                          </tr>

                          <tr>
                              <td style="background-color: purple;color:white">Scheme Objective</td>
                              <td><%=d.getScheme_objective()%></td>
                          </tr>

                          <tr>
                              <td style="background-color: purple;color:white">Scheme Type</td>
                              <td><%=d.getScheme_type()%></td>
                          </tr>
                                    
                             <%  }
                          %>

                        


                      </tbody>
                  </table>
                </div>
                          
               <form name="visitor_problem_register" method="post" action="visitor_problem_register_data.html">
                   <input type="hidden" name="doctor_id" value=""/>
            <div class="form_main">
                <div class="form_heading">
                    <p>APPLICATION FORM</p>
                </div>
                <br>
                <div class="form_section">

                  <div class="row">
                    

                    <div class="input-group">
                      <label>Consultant No</label>
                      <input type="text" name="consult_id" value="<%=consult_id%>" readonly="readonly"/>
                              
                    </div>
                    <div class="input-group">
                        <label>Full Name</label>
                        <input type="text" name="fullname" required="required"
                               oninput="this.setCustomValidity('')"
                               oninvalid="this.setCustomValidity('Please enter your full name')"/>
                    </div>
                    <div class="input-group">
                        <label>Date of Birth</label>
                        <input type="date" name="dob" required="required"
                               oninput="this.setCustomValidity('')"
                               oninvalid="this.setCustomValidity('Please enter your date of birth')"/>
                    </div>
                    <div class="input-group">
                        <label>Gender</label>
                        <select name="gender" required="required"
                                oninput="this.setCustomValidity('')"
                                oninvalid="this.setCustomValidity('Please select your gender')">
                            <option value="">Select</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="input-group">
                        <label>Address</label>
                        <textarea name="address" required="required"
                                  oninput="this.setCustomValidity('')"
                                  oninvalid="this.setCustomValidity('Please enter your address')"></textarea>
                    </div>
                  </div>
                  <div class="row">
                      <div class="input-group">
                          <label>Contact Number</label>
                          <input type="tel" name="contact" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter your contact number')"/>
                      </div>
                      <div class="input-group">
                          <label>Email ID</label>
                          <input type="email" name="email" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter a valid email ID')"/>
                      </div>
                      <div class="input-group">
                          <label>Scheme Applying For</label>
                          <input type="text" name="scheme" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter the scheme name')"/>
                      </div>
                      <div class="input-group">
                          <label>Age</label>
                          <input type="number" name="age" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter your annual income')"/>
                      </div>
                      <div class="input-group">
                          <label>Annual Income</label>
                          <input type="number" name="income" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter your annual income')"/>
                      </div>
                  </div>
                  <div class="row">
                      <div class="input-group">
                          <label>Bank Name</label>
                          <input type="text" name="bank" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter your bank name')"/>
                      </div>
                      <div class="input-group">
                          <label>Account Number</label>
                          <input type="text" name="account" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter your bank account number')"/>
                      </div>
                      <div class="input-group">
                          <label>IFSC Code</label>
                          <input type="text" name="ifsc" required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please enter the IFSC code')"/>
                      </div>
                      <div class="input-group">
                          <label>Upload Documents</label>
                          <input type="file" name="documents[]" multiple required="required"
                                 oninput="this.setCustomValidity('')"
                                 oninvalid="this.setCustomValidity('Please upload the required documents')"/>
                      </div>
                  </div>
                  

                    <div class="row">
                        <div class="input-group">

                           
                        </div>    
                        <div class="input-group">

                        </div>    
                    <div class="input-group">
                        <input type="checkbox" name="terms" required="required"
                               oninput="this.setCustomValidity('')"
                               oninvalid="this.setCustomValidity('You must agree to the terms and conditions')"/>
                        <label>I agree to the terms and conditions</label>

                    </div>    
                    <div class="input-group" style="display: flex;flex-direction:row;">   
                      <input type="submit" name="btnsubmin" value="Add" class="btnclass1"/>                   
                      <input type="reset" name="btncancel" value="Cancel" class="btnclass2"/> 
                    </div>    
                  </div>

                
                </div>
              </div>
            </form>
                          
                          
                          
                
            </div>
            

            <!-- Form Start -->

              
            <!-- Form End -->




      
          
    </body>

</html>