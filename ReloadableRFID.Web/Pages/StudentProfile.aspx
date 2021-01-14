<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="ReloadableRFID.Web.Pages.StudentProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>

        <title>Students Account</title>

        <link rel="shortcut icon" href="../img/filamer.png" />

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet"/>

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet"/>

        <!-- Custom CSS -->
        <link href="../css/startmin.css" rel="stylesheet"/>

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

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
                            <i class="fa fa-user fa-fw"></i> secondtruth <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="AdminLogin.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>

                <!-- /.navbar-top-links -->
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="Home.aspx" class="active"><i class="fa fa-dashboard fa-fw"></i> Home</a>
                            </li>
                            <li>
                                <a href="#"> <i class="fa fa-users"></i> Account<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                     <li>
                                        <a href="#">Student<span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="CreateStudent.aspx">Create Student's Account</a>
                                            </li>
                                            <li>
                                                <a href="StudentAccount.aspx">Student's Account List</a>
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
                                <a href="#"><i class="fa fa-files-o fa-fw"></i> Reports<span class="fa arrow"></span></a>
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


          <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Student's Profile</h1>
                        </div>
                        <div class="col-lg-6">
                            <fieldset disabled="disabled">

                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <asp:Label ID="studnum" runat="server" Text="Student Number"></asp:Label>
                                        <asp:TextBox ID="StudNumber" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                 </div>

                                  <div class="form-group">
                                        <asp:Label ID="fullname" runat="server" Text="Full Name"></asp:Label>
                                        <asp:TextBox ID="Studname" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                
                                 <div class="form-group row">
                                     <div class="col-md-6">
                                        <asp:Label ID="DateofB" runat="server" Text="Date of Birth"></asp:Label>
                                        <asp:TextBox ID="Studbday" class="form-control" runat="server"></asp:TextBox>
                                     </div>

                                      <div class="col-md-4">
                                        <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label>
                                        <asp:TextBox ID="StudGen" class="form-control" runat="server"></asp:TextBox>
                                     </div>
                                 </div>


                                <div class="form-group">
                                        <asp:Label ID="Address" runat="server" Text="Complete Address"></asp:Label>
                                        <asp:TextBox ID="StudAdd" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                            </fieldset>
                        </div>
                        <!--end-->
                        <div class="col-lg-6">
                            <fieldset disabled="disabled">
                            <div class="form-group">
                                <asp:Label ID="StudentDept" runat="server" Text="Department"></asp:Label>
                                <asp:TextBox ID="StudDept" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="course" runat="server" Text="Course"></asp:Label>
                                <asp:TextBox ID="StudCourse" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group row">
                                     <div class="col-md-4">
                                        <asp:Label ID="yrlvl" runat="server" Text="Year/Grade Level"></asp:Label>
                                        <asp:TextBox ID="studyrlvl" class="form-control" runat="server"></asp:TextBox>
                                     </div>
                            </div>

                            </fieldset>
                        </div>
                        <!--end-->
                        <hr />

                   <!--Start Table Transaction-->
                   <div class="row">
                       <div class="col-lg-12">
                       <h1 class="page-header">Transaction History</h1>
                        <div class="panel-body">
                             <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>Transaction Number</th>
                                                    <th>Transaction Date</th>
                                                    <th>Product</th>
                                                    <th>Quantity</th>
                                                    <th>Total</th>
                                                    <th>Remaining Balance</th>
                                                </tr>
                                            </thead>
                                            </table>
                                 </div>
                             </div>
                           </div>
                        </div>
                    <!--end-->

                    </div>
                </div>
           </div>
        <!--end-->
       </div>
    </form>

       <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../js/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="../js/dataTables/jquery.dataTables.min.js"></script>
        <script src="../js/dataTables/dataTables.bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../js/startmin.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function() {
                $('#dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>

</body>
</html>
