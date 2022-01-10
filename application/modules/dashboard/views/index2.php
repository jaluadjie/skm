<!--
=========================================================
Material Dashboard - v2.1.2
=========================================================

Product Page: https://www.creative-tim.com/product/material-dashboard
Copyright 2020 Creative Tim (https://www.creative-tim.com)
Coded by Creative Tim

=========================================================
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="<?=base_url('assets/img/apple-icon.png');?>">
  <link rel="icon" type="image/png" href="<?=base_url('assets/img/favicon.png');?>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Dashboard e-SKM Pemerintah Prov. Kalbar
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="<?=base_url('assets/dashboard/css/material-dashboard.css?v=2.1.2');?>" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap5.min.css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="<?=base_url('assets/dashboard/demo/demo.css');?>" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="<?=base_url('assets/dashboard/img/sidebar-1.jpg');?>">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="#" class="simple-text logo-normal">
          <img src="<?=base_url('assets/img/sekam-padi.png');?>" alt="e-SKM" width="225">
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active">
            <a class="nav-link klik_menu" id="dashboard" href="#dashboard">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="collapse" href="#pagesMaster" class="nav-link">
                <i class="material-icons">grid_on</i>
                <p>Tabel Master
                  <b class="caret"></b>
                </p>
            </a>
            <div class="collapse" id="pagesMaster">
                <ul class="nav" style="padding-left: 15px;">
                  <li class="nav-item">
                    <a class="nav-link klik_menu" id="operator" href="#operator">
                      <i class="material-icons">account_box</i>Operator
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link klik_menu" id="layanan" href="#layanan">
                      <i class="material-icons">local_offer</i>Layanan
                    </a>
                  </li>
                </ul>
            </div>
        </li>
          <li class="nav-item">
            <a data-toggle="collapse" href="#pagesSurvey" class="nav-link">
                <i class="material-icons">content_paste</i>
                <p>Survey
                  <b class="caret"></b>
                </p>
            </a>
            <div class="collapse" id="pagesSurvey">
                <ul class="nav" style="padding-left: 15px;">
                <li class="nav-item ">
                  <a class="nav-link klik_menu" id="responden" href="#responden">
                    <i class="material-icons">people_outline</i>Responden
                  </a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link klik_menu" id="layanan" href="#layanan">
                      <i class="material-icons">local_offer</i>Layanan
                    </a>
                  </li>
                </ul>
            </div>
        </li>
        </ul> 
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
            <div class="navbar-minimize">
                <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                    <i class="material-icons visible-on-sidebar-regular">more_vert</i>
                    <i class="material-icons visible-on-sidebar-mini">view_list</i>
                </button>
            </div>
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;"><?=$title;?></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:;">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mike John responded to your email</a>
                  <a class="dropdown-item" href="#">You have 5 new tasks</a>
                  <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="#">Another Notification</a>
                  <a class="dropdown-item" href="#">Another One</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="<?=base_url('login/logout');?>">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->

            <div class="content">
                <!-- inject html disini -->
            </div>

            <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">Creative Tim</a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">About Us</a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">Blog</a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">Licenses</a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
          <a href="http://biroorganisasi.kalbarprov.go.id">Biro Organisasi Setda Prov. Kalbar</a>
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
  <script src="<?=base_url('assets/dashboard/js/core/popper.min.js');?>"></script>
  <script src="<?=base_url('assets/dashboard/js/core/bootstrap-material-design.min.js');?>"></script>
  <script src="<?=base_url('assets/dashboard/js/plugins/perfect-scrollbar.jquery.min.js');?>"></script>
  <!-- Plugin for the momentJs  -->
  <script src="<?=base_url('assets/dashboard/js/plugins/moment.min.js');?>"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="<?=base_url('assets/dashboard/js/plugins/sweetalert2.js');?>"></script>
  <!-- Forms Validations Plugin -->
  <script src="<?=base_url('assets/dashboard/js/plugins/jquery.validate.min.js');?>"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="<?=base_url('assets/dashboard/js/plugins/jquery.bootstrap-wizard.js');?>"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="<?=base_url('assets/dashboard/js/plugins/bootstrap-selectpicker.js');?>"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="<?=base_url('assets/dashboard/js/plugins/bootstrap-datetimepicker.min.js');?>"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="<?=base_url('assets/dashboard/js/plugins/jquery.dataTables.min.js');?>"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="<?=base_url('assets/dashboard/js/plugins/bootstrap-tagsinput.js');?>"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="<?=base_url('assets/dashboard/js/plugins/jasny-bootstrap.min.js');?>"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="<?=base_url('assets/dashboard/js/plugins/fullcalendar.min.js');?>"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="<?=base_url('assets/dashboard/js/plugins/jquery-jvectormap.js');?>"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<?=base_url('assets/dashboard/js/plugins/nouislider.min.js');?>"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="<?=base_url('assets/dashboard/js/plugins/arrive.min.js');?>"></script>
  <!-- Chartist JS -->
  <script src="<?=base_url('assets/dashboard/js/plugins/chartist.min.js');?>"></script>
  <!--  Notifications Plugin    -->
  <script src="<?=base_url('assets/dashboard/js/plugins/bootstrap-notify.js');?>"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="<?=base_url('assets/dashboard/js/material-dashboard.js?v=2.1.2');?>" type="text/javascript"></script>
  <!-- Select2 -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js'></script>
  
  <script type="text/javascript">
    $(document).ready(function() {
        $(".klik_menu").click(function(){
        var menu = $(this).attr("id");
        if(menu == ''){
            loading();
            $('.content').load("<?=base_url('dashboard');?>");           
        }
        else {
            loading();
            $('.content').load('<?=base_url();?>'+menu);
            $('li.nav-item').removeClass("active");
            $(this).parent().addClass("active");
        }
        
    });

        //load page awal
        $('.content').load("<?php echo base_url('dashboard');?>");

        //active menu sidebar
        // $('ul li a.klik_menu').click(function(){
        // $('li.nav-item').removeClass("active");
        // $(this).parent().addClass("active");
    // });

    });

    function loading(){
    $(".content").html('<center><img src="<?php echo base_url('assets/images/loader.gif');?>"/><i> loading page ...</i></center>');
    $(".content").hide();
    $(".content").fadeIn("slow");
  };
</script>
</body>

</html>