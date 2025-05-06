<%@page import="model.*"%>
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

              <div class="table-horizontal-container card" style="margin-top:2%;height:700px;padding-top:2%;padding-bottom:2%;">
                <div>
                    <center><h4>VISITOR CONSULTANT</h4></center> <br><br>                   
                </div>  
                  
               
                <div class="card-header" style="background-color: #65000B;color:white;margin-top:2%">
                    <center>Consultant Report</center>
                </div>                
                
                <div class="table-horizontal-container" style="overflow: scroll;margin:20px;">
                  <table class="unfixed-table table-bordered table-striped" cellpadding="10px" rules="rows" align="center">
                      <thead class="tblhe">
                        <tr>
                          <td style="background-color: purple;color:white">Consult No</td>
                          <td style="background-color: purple;color:white">Visitor ID</td>
                          <td style="background-color: purple;color:white">Full Name</td>
                          <td style="background-color: purple;color:white">DOB</td>
                          <td style="background-color: purple;color:white">Gender</td>
                          <td style="background-color: purple;color:white">Address</td>
                          <td style="background-color: purple;color:white">Contact</td>
                          <td style="background-color: purple;color:white">EmailId</td>
                          <td style="background-color: purple;color:white">Purpose</td>
                          <td style="background-color: purple;color:white">Age</td>
                          <td style="background-color: purple;color:white">Annual Income</td>
                          <td style="background-color: purple;color:white">Bank</td>
                          <td style="background-color: purple;color:white">Account Number</td>
                          <td style="background-color: purple;color:white">IFSC</td>
                          <td style="background-color: purple;color:white">Doc</td>
                          <td style="background-color: purple;color:white">Response</td>

                        </tr>
                      </thead>
                      <tbody>
                        
                          <%
                                
                                List data = DBContext.getContext().readData("from Consultant ");
                                Iterator ite = data.iterator();
                                while(ite.hasNext()) {
                                    Consultant c = (Consultant) ite.next();
                          %>
                          <tr>
                              <td><%=c.getConsultant_no()%></td>
                              <td><%=c.getVisitor_id()%></td>
                              <td><%=c.getFullname()%></td>
                              <td><%=c.getDob()%></td>
                              <td><%=c.getGender()%></td>
                              <td><%=c.getAddress()%></td>
                              <td><%=c.getContact()%></td>
                              <td><%=c.getEmail()%></td>
                              <td><%=c.getScheme()%></td>
                              <td><%=c.getAge()%></td>
                              <td><%=c.getIncome()%></td>
                              <td><%=c.getBank()%></td>
                              <td><%=c.getAccount()%></td>
                              <td><%=c.getIfsc()%></td>
                              <td><%=c.getDocuments()%></td>
                              <td><a href="consultant_response.html?cid=<%=c.getConsultant_no()%>"><img src="images/response.png" height="50px" width="50px"/></a></td>
                          </tr>
                                    
                             <%  }
                          %>
                       
                      </tbody>
                  </table>
                </div>
                
            </div>
              
            <!-- Form End -->




      
          
    </body>

</html>