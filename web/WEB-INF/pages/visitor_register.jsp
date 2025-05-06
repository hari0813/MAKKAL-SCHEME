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
                    <a href="index.html">HOME</a>
                </li>
                <li>
                    <a href="#">
                        GOVERNMENT
                        <svg aria-hidden="true" width="16" height="16">
                        <use xlink:href="#arrow" />
                        </svg>
                    </a>
                    <ul>
                        <li><a href="gov_register.html">Register</a></li>
                        <li><a href="gov_login.html">Login</a></li>
                    </ul>
                </li>




                <li>
                    <a href="#">
                        VISITORS
                        <svg aria-hidden="true" width="16" height="16">
                        <use xlink:href="#arrow" />
                        </svg>
                    </a>
                    <ul>
                        <li><a href="visitor_register.html">Register</a></li>
                        <li><a href="visitor_login.html">Login</a></li>
                    </ul>
                </li>

                


            </ul>
        </nav>


        <!-- Menu Bar end -->

        <!-- Form Start -->

        <form name="visitor_register" method="post" action="visitor_register_data.html">

            <div class="form_main">
                <div class="form_heading">
                    <p>VISITOR REGISTER</p>
                </div>
                <br>
                <div class="form_section">

                    <div class="row">


                        <div class="input-group">
                            <label>User Name</label>
                            <input type="text" name="visitor_user_name" required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter User Name')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Password</label>
                            <input type="password" name="visitor_password"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Password')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>First Name</label>
                            <input type="text" name="first_name"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter First Name')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Last Name</label>
                            <input type="text" name="last_name"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Last Name')"
                                   />
                        </div>

                    </div>


                    <div class="row">


                        <div class="input-group">
                            <label>Address-1</label>
                            <input type="text" name="address1"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Address1')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Address-2</label>
                            <input type="text" name="address2"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Address2')"/>
                        </div>

                        <div class="input-group">
                            <label>Street</label>
                            <input type="text" name="street"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Street')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>City</label>
                            <input type="text" name="city"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter City')"
                                   />
                        </div>
                    </div>

                    <div class="row">

                        <div class="input-group">
                            <label>Pincode</label>
                            <input type="text" name="pincode"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Pincode')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Mobile</label>
                            <input type="text" name="mobile"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Mobile')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Email ID</label>
                            <input type="text" name="emailid"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Email ID')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Gender</label>
                            <select name="gender">
                                <option>Select</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>




                    </div>


                    <div class="row">


                        <div class="input-group">
                            <label>Aadhar ID</label>
                            <input type="text" name="aadhar_id"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter AAdhar Id')"
                                   />
                        </div>

                        <div class="input-group">
                            <label>Pancard No</label>
                            <input type="text" name="pan_no"
                                   required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter Pan No')"
                                   />
                        </div>




                        <div class="input-group">
                            <label>Date Of Birth</label>
                            <input type="date" name="user_birth"placeholder="Enter your issued date" required />
                        </div>
                        <div class="input-group">
                            <label>Occupation</label>
                            <input type="text" name="occupation" required="required"
                                   oninput="this.setCustomValidity('')"
                                   oninvalid="this.setCustomValidity('Please Enter User Name')"
                                   />
                        </div>
                        <div class="row">



                            <div class="input-group" style="display: flex;flex-direction:row;">
                                <input type="submit" name="btnsubmin" value="Register" class="btnclass1"/>
                                <input type="reset" name="btncancel" value="Cancel" class="btnclass2"/>
                            </div>
                        </div>


                    </div>
                </div>
        </form>
        <!-- Form End -->
    </body>
</html>
