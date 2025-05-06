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
                        Schemes
                        <svg aria-hidden="true" width="16" height="16">
                        <use xlink:href="#arrow" />
                        </svg>
                    </a>
                    <ul>
                        <li><a href="scheme_report.html">View Schemes</a></li>
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
                <center><h4>SCHEME REPORT</h4></center> <br><br>
            </div>


            <div class="card-header" style="background-color: #65000B;color:white;margin-top:2%">
                <center>Scheme Report</center>
            </div>

            <div class="table-horizontal-container" style="overflow: scroll;margin:20px;">
                <table class="unfixed-table table-bordered table-striped" cellpadding="10px" rules="rows" align="center">
                    <thead class="tblhe">
                        <tr>
                            <td style="background-color: purple;color:white">Scheme Name</td>
                            <td style="background-color: purple;color:white">Scheme Category</td>
                            <td style="background-color: purple;color:white">Scheme Type</td>
                            <td style="background-color: purple;color:white">Launch Date</td>
                            <td style="background-color: purple;color:white">Exp Date</td>
                            <td style="background-color: purple;color:white">Target Beneficiaries</td>
                            <td style="background-color: purple;color:white">Scheme Objective</td>
                            <td style="background-color: purple;color:white">List of Documents</td>
                            <td style="background-color: purple;color:white">Annual Income</td>
                            <td style="background-color: purple;color:white">Benefits </td>
                            <td style="background-color: purple;color:white">Age Limit</td>
                            <td style="background-color: purple;color:white">Application Mode</td>
                            <td style="background-color: purple;color:white">state</td>
                            <td style="background-color: purple;color:white">Panchayat</td>
                            <td style="background-color: purple;color:white">Apply</td>
                        </tr>
                    </thead>
                    <tbody>

                        <%

                            List data = DBContext.getContext().readData("from Scheme ");
                            Iterator ite = data.iterator();
                            while (ite.hasNext()) {
        Scheme n = (Scheme) ite.next();%>

                        <tr>
                            <td><%=n.getScheme_name()%></td>
                            <td><%=n.getScheme_category()%></td>
                            <td><%=n.getScheme_type()%></td>
                            <td><%=n.getLaunch_date()%></td>
                            <td><%=n.getExp_date()%></td>
                            <td><%=n.getTarget_beneficiaries()%></td>
                            <td><%=n.getScheme_objective()%></td>
                            <td><%=n.getList_of_documents()%></td>
                            <td><%=n.getAnnual_income()%></td>
                            <td><%=n.getBenefits()%></td>
                            <td><%=n.getAge_limit()%></td>
                            <td><%=n.getAppliction_mode()%></td>
                            <td><%=n.getState()%></td>
                            <td><%=n.getPanchayat()%></td>
                            <td><a href="visitor_consultant.html?doc_id=<%=n.getScheme_name()%>"><img src="images/apply.png" height="50px" width="50px"/></a></td>
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