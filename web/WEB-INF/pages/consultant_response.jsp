<%@page import="model.Consultant"%>
<%@page import="model.Government"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbutil.DBContext"%>
<%@page import="java.util.List"%>
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
                <a href="gov_home.html">HOME</a>
            </li>
            

            <li>
              <a href="#">
                VISITORS
                <svg aria-hidden="true" width="16" height="16">
                  <use xlink:href="#arrow" />
                </svg>
              </a>
              <ul>
                <li><a href="visitor_report.html">Visitor Report</a></li>                                              
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
            

            <!-- Form Start -->
            
                <div class="table-horizontal-container card" style="margin-top:2%;height:auto;padding-top:2%;padding-bottom:2%;">
                <div>
                    <center><h4>RESPONSE</h4></center> <br><br>                   
                </div>  
                  
               
                <div class="card-header" style="background-color: #65000B;color:white;margin-top:2%">
                    <center>Doctor Response</center>
                </div>                
                
                <div class="table-horizontal-container" style="overflow: scroll;margin:20px;">
                  <table class="unfixed-table table-bordered table-striped" cellpadding="10px" rules="rows" align="center">
                      
                      <tbody>
                        
                          <%
                                String response_id = "Response"+new java.util.Random().nextInt(50000);
                              
                                String consult_id = (String)session.getAttribute("consult_id");
                                System.out.println(consult_id);
                                List data = DBContext.getContext().readData("from Consultant where consultant_no='"+consult_id+"'");
                                Iterator ite = data.iterator();
                                
                                while(ite.hasNext()) {
                                    Consultant consult = (Consultant)ite.next(); 
                                   
                          %>
                          <tr>
                              <td style="background-color: purple;color:white">Consultant No</td>
                              <td><%=consult_id%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Addiction</td>
                              <td><%=consult.getFullname()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Age</td>
                              <td><%=consult.getAge()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Annual Income</td>
                              <td><%=consult.getIncome()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Bank</td>
                              <td><%=consult.getBank()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">IFSC</td>
                              <td><%=consult.getIfsc()%></td>
                          </tr>

                          <tr>
                              <td style="background-color: purple;color:white">Account No</td>
                              <td><%=consult.getAccount()%></td>
                          </tr>

                             <%  }
                          %>
                       
                      </tbody>
                  </table>
                </div>
                          
               <form name="visitor_problem_register" method="post" action="doctor_response_data.html">
                   
                   <input type="hidden" name="consult_id" value="<%=consult_id%>"/>
            <div class="form_main">
                <div class="form_heading">
                  <p>DOCTOR RESPONSE FORM</p>
                </div>
                <br>
                <div class="form_section">

                  <div class="row">
                    

                    <div class="input-group">
                      <label>Response ID</label>
                      <input type="text" name="response_id" value="<%=response_id%>" readonly="readonly"/>
                              
                    </div>

                    <div class="input-group">
                        <label>Date</label>
                        <input type="datetime-local" name="response_date"
                            required="required"
                            oninput="this.setCustomValidity('')"
                            oninvalid="this.setCustomValidity('Please Enter Password')"
                               />                        
                    </div>

                    
                   

                  </div>
                    
                    
                  <div class="row">
                    
                    
                      
                    <div class="input-group">
                      <label>Stage</label>
                      <select name="stage">
                        <option>Select</option>
                        <option value="stage1">Stage-1</option>
                        <option value="stage2">Stage-2</option>
                        <option value="stage3">Stage-3</option>
                        
                      </select>
                    </div>

                    <div class="input-group">
                        <label>APPLICATION STATUS</label>
                        
                            <input type="text" name="counseling"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter ststus')"
                                   />

                        </select>
                    </div>

                                   

                    <div class="input-group">
                        <label>REJECTION REASON</label>
                        <textarea rows="5" cols="5" name="description"></textarea>
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
                          
                          
                          
                
            </div>
            
              
            <!-- Form End -->




      
          
    </body>

</html>