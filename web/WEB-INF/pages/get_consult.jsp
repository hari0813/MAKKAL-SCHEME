<%@page import="model.Consultant"%>
<%@page import="model.Visitor"%>
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
                <li><a href="visitor_responses.html">Visitor Responses</a></li>                                              
                
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
                    <center><h4>CONSULTANT REPORT</h4></center> <br><br>                   
                </div>  
                  
               
                <div class="card-header" style="background-color: #65000B;color:white;margin-top:2%">
                    <center>Consultant</center>
                </div>                
                
                <div class="table-horizontal-container" style="overflow: scroll;margin:20px;">
                  <table class="unfixed-table table-bordered table-striped" cellpadding="10px" rules="rows" align="center">
                      
                      <tbody>
                        
                          <%
                                String consult_id = (String)session.getAttribute("consult_id");         
                                
                                List data = DBContext.getContext().readData("from Consultant where consultant_no='"+consult_id+"'");
                                Iterator ite = data.iterator();
                                
                                while(ite.hasNext()) {
                                    Consultant consult = (Consultant)ite.next(); 
                                   
                          %>
                          <tr>
                              <td style="background-color: purple;color:white">Consultant ID</td>
                              <td><%=consult_id%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Addiction</td>
                              <td><%=consult.getAddiction()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Age</td>
                              <td><%=consult.getAge()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Consult Date</td>
                              <td><%=consult.getApply_date()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">How Long</td>
                              <td><%=consult.getDuration()%></td>
                          </tr>
                          
                          <tr>
                              <td style="background-color: purple;color:white">Purpose</td>
                              <td><%=consult.getPurpose()%></td>
                          </tr>
                          <tr>
                              <td style="background-color: purple;color:white">Description</td>
                              <td><%=consult.getDescription()%></td>
                          </tr>
                                    
                             <%  }
                          %>
                       
                      </tbody>
                  </table>
                </div>
            <!-- Form End -->




      
          
    </body>

</html>