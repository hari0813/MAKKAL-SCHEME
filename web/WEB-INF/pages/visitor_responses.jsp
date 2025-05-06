<%@page import="model.Response"%>
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

             <div class="table-horizontal-container card" style="margin-top:2%;height:700px;padding-top:2%;padding-bottom:2%;">
                <div>
                    <center><h4>VISITOR RESPONSES</h4></center> <br><br>                   
                </div>  
                  
               
                <div class="card-header" style="background-color: #65000B;color:white;margin-top:2%">
                    <center>Response Report</center>
                </div>                
                
                <div class="table-horizontal-container" style="overflow: scroll;margin:20px;">
                  <table class="unfixed-table table-bordered table-striped" cellpadding="10px" rules="rows" align="center">
                      <thead class="tblhe">
                        <tr>
                          <td style="background-color: purple;color:white">Response ID</td>
                        
                          <td style="background-color: purple;color:white">Consult ID</td>
                          <td style="background-color: purple;color:white">Date</td>
                          <td style="background-color: purple;color:white">stage</td>

                          <td style="background-color: purple;color:white">Application Status</td>
                          <td style="background-color: purple;color:white">Rejection Resason</td>

                        </tr>
                      </thead>
                      <tbody>
                        
                          <%
                               
                                List data = DBContext.getContext().readData("from Response ");
                                Iterator ite = data.iterator();
                                while(ite.hasNext()) {
                                    Response resp = (Response)ite.next(); 
                                   
                                    
                          %>
                          <tr>
                              <td><%=resp.getResponse_id()%></td>
                              
                              <td><a href="get_consult.html?cid=<%=resp.getConsult_no()%>"><%=resp.getConsult_no()%></a></td>
                            
                              <td><%=resp.getResponse_date()%></td>
                              <td><%=resp.getStage()%></td>
                              <td><%=resp.getCounseling()%></td>

                              <td><%=resp.getDescription()%></td>
                             
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