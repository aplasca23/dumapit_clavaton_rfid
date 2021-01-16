<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs" Inherits="ReloadableRFID.Web.Pages.CreateStudent" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Students Account</title>

    <link rel="shortcut icon" href="../img/filamer.png" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="../css/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body>
    <form id="form1" runat="server">

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home.aspx">Filamer Christian University</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> <%= Session["Username"] %> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="AdminLogin.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="Home.aspx" class="active"><i class="fa fa-dashboard fa-fw"></i>Home</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-users"></i>Account<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Student<span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="#">Create Student's Account</a>
                                            </li>
                                            <li>
                                                <a href="StudentAccount">Student's Account List</a>
                                            </li>
                                        </ul>
                                        <!-- /.nav-third-level -->
                                    </li>
                                    <li>

                                        <a href="#">Cashier<span class="fa arrow"></span></a>
                                        <!-- /Cashier Create Account -->
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="#">Create Cashier Account</a>
                                            </li>
                                            <li>
                                                <a href="#">Cashier Account</a>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Reports<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="blank.html">Daily</a>
                                    </li>
                                    <li>
                                        <a href="blank.html">Weekly</a>
                                    </li>
                                    <li>
                                        <a href="blank.html">Monthly</a>
                                    </li>
                                    <li>
                                        <a href="login.html">Yearly</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!--Start of Student Register Form-->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Student's Account</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Create Student's Account
                                </div>

                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                    <label for="txtStudentNo" class="lead">Student Number</label>
                                                    <asp:TextBox ID="txtStudentNo" class="form-control"
                                                        placeholder="Enter Student Number" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="form-group">
                                                    <label for="txtFN" class="lead">Fullname</label>
                                                    <asp:TextBox ID="txtFN" class="form-control"
                                                        placeholder="Enter First Name" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtMN" class="form-control"
                                                        placeholder="Enter Middle Name" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtLN" class="form-control"
                                                        placeholder="Enter Last Name" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="form-group">
                                                    <label for="txtDob" class="lead">Date of Birth:</label>
                                                    <asp:TextBox runat="server" ID="txtDob" TextMode="Date"></asp:TextBox>
                                                    <%--<input type="date" id="bday" name="birthday" />--%>
                                                </div>

                                                <div class="form-group">
                                                    <label for="rblGender" class="lead">Gender</label>
                                                    <asp:RadioButtonList runat="server" ID="rblGender" RepeatDirection="Horizontal" CellSpacing="1" CellPadding="1" RepeatColumns="2">
                                                        <asp:ListItem>MALE</asp:ListItem>
                                                        <asp:ListItem>FEMALE</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                    <%--<div class="radio">
                                                        <label>
                                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" />Male
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option1" />Female
                                                        </label>
                                                    </div>--%>
                                                </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-group">

                                                    <label>Complete Address</label>
                                                    <asp:TextBox ID="txtAddress" class="form-control"
                                                        placeholder="Enter Address" runat="server"></asp:TextBox>

                                                </div>

                                                <div class="form-group">
                                                    <%--<label  class="lead">Department</label>
                                                    <select class="form-control">
                                                        
                                                        <option></option>
                                                        <option>College of Computer Studies</option>
                                                        <option>College of Nursing</option>
                                                        <option>College of Hotel Management and Tourism</option>
                                                        <option>College of Education</option>
                                                        <option>College of Criminology</option>
                                                        <option>College of Art and Sciences</option>
                                                        <option>College of Criminology</option>
                                                        <option>College of Business Administration</option>
                                                        <option>Senior High School</option>
                                                        <option>Junior High School</option>
                                                        <option>Elementary</option>
                                                        <option>Kinder</option>
                                                    </select>--%>
                                                    <label class="lead" for="ddlDepartments">Department</label>
                                                    <asp:DropDownList runat="server" ID="ddlDepartments" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="ddlDepartments_OnSelectedIndexChanged">
                                                        <asp:ListItem Text="-- SELECT DEPARTMENT --" Value="0"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group">

                                                    <%--<label class="lead">Course/Strand</label>
                                                    <select class="form-control">
                                                        <option></option>
                                                        <option>Bachelor of Science in Information Technology</option>
                                                        <option>Bachelor of Science in Computer Science</option>
                                                        <option>Bachelor of Science in Tourism Management</option>
                                                        <option>Bachelor of Science in Elementary Education
                                                        (Major In Mathematics)</option>
                                                        <option>Bachelor of Science in Elementary Education
                                                        (Major In English)</option>
                                                        <option>Bachelor of Science in Elementary Education
                                                        (Major In Science)</option>
                                                        <option>Science, Technology, Engineering, 
                                                        and Mathematics (STEM)</option>
                                                        <option>Technical-Vocational-Livehood(TVL)-ICT</option>
                                                        <option>Technical-Vocational-Livehood(TVL)-Industrial Arts</option>
                                                        <option>Technical-Vocational-Livehood(TVL)-Home Ecoomics</option>
                                                        <option>Technical-Vocational-Livehood(TVL)-Agri-Fishery Arts</option>
                                                        <option>Accountancy, Business and Management(ABM)</option>
                                                        <option>Humanities and Social Sciences(HUMSS)</option>
                                                        <option>General Academics(GA)</option>
                                                    </select>--%>
                                                    
                                                    <label class="lead" for="ddlCourses">Course</label>
                                                    <asp:DropDownList runat="server" ID="ddlCourses" CssClass="form-control">
                                                        <asp:ListItem Text="-- SELECT COURSE --" Value="0"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-lg-5">
                                                        <label for="ddlYearLevels" class="lead">Year Level</label>
                                                        <asp:DropDownList runat="server" ID="ddlYearLevels" CssClass="form-control">
                                                            <asp:ListItem Text="-- SELECT YEAR LEVEL --" Value="0"></asp:ListItem>
                                                        </asp:DropDownList>
                                                        <%--<select class="form-control">
                                                            <option></option>
                                                            <option>Grade 1</option>
                                                            <option>Grade 2</option>
                                                            <option>Grade 3</option>
                                                            <option>Grade 4</option>
                                                            <option>Grade 5</option>
                                                            <option>Grade 6</option>
                                                            <option>Grade 7</option>
                                                            <option>Grade 8</option>
                                                            <option>Grade 9</option>
                                                            <option>Grade 10</option>
                                                            <option>Grade 11</option>
                                                            <option>Grade 12</option>
                                                            <option>1st Year</option>
                                                            <option>2nd Year</option>
                                                            <option>3rd Year</option>
                                                            <option>4th Year</option>
                                                            <option>5th Year</option>
                                                        </select>--%>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="fuPhoto" class="lead">File input</label>
                                                    <asp:FileUpload ID="fuPhoto" runat="server" />
                                                    <div class="form-group">
                                                        <div class="col-12">
                                                            <asp:Button ID="btnRegister" class="btn btn-success" Style="float: right;" runat="server" Text="Register" OnClick="btnRegister_OnClick" />
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End of Register Form-->

        </div>
        <!-- /#page-wrapper -->
    </form>

    <!-- jQuery -->
    <script src="../js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../js/startmin.js"></script>

</body>
</html>
