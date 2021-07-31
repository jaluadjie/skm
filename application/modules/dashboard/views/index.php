<!DOCTYPE html>
<html>
    <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SIKLB | BPBD Prov. Kalbar</title>

    <!-- Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.3/skins/flat/green.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/switchery/0.8.2/switchery.min.css" rel="stylesheet">
     <!-- Select2 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="<?php echo base_url('assets/vendors/starrr/dist/starrr.css');?>" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="<?php echo base_url('assets/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css');?>" rel="stylesheet">
    <!-- JQVMap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jqvmap/1.5.1/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-daterangepicker/3.0.5/daterangepicker.min.css" rel="stylesheet">

    <!-- Datatables -->
    <link href="<?php echo base_url('assets/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')?>" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?php echo base_url('assets/css/dashboard.min.css')?>" rel="stylesheet">

    </head> 
    <body class="nav-sm">
        <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col menu_fixed">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-truck"></i> <span>BPBD Prov.Kalbar</span></a>
            </div>

            <div class="clearfix"></div>

             <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="../assets/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Selamat Datang,</span>
                <h2>Admin</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Menu</h3>
                <ul class="nav side-menu">
                  <li><a class="klik_menu" id="dasboard"><i class="fa fa-home"></i> Dashboard </a></li>
                  <li><a><i class="fa fa-table"></i> Tabel Master <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a class="klik_menu" id="sbarang">Sumber Barang</a></li>
                      <li><a class="klik_menu" id="barang">Barang</a></li>
                      <li><a class="klik_menu" id="instansi">Instansi</a></li>
                      <li><a class="klik_menu" id="wilayah">Kab / Kota</a></li>
                      <li><a class="klik_menu" id="user">User</a></li>
                      <li><a class="klik_menu" id="pejabat">Pejabat</a></li>
                    </ul>
                  </li>
                  <li><a class="klik_menu" id="pengadaan"><i class="fa fa-edit"></i> Pengadaan Barang </a>
                  </li>
                  <li><a class="klik_menu" id="distribusi"><i class="fa fa-plane"></i> Distribusi Barang </a>
                  </li>
                  <li><a class="klik_menu" id="laporan"><i class="fa fa-bar-chart-o"></i>Laporan </a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav hidden-print">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="../assets/images/img.jpg" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="<?php echo base_url('login/logout');?>"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="../assets/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="../assets/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="../assets/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="../assets/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
      </div>
        <!-- /top navigation -->
        
        <div class="right_col" role="main">

            <div class="badan">

            

            </div>
        </div>
        <!-- footer content -->
        <footer>
          <div class="pull-right hidden-print">
            Sistem Informasi Ketersediaan Logistik Bencana - BPBD Prov. Kalbar <i class="fa fa-copyright"></i> 2017
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fastclick/1.0.6/fastclick.min.js"></script>
    <!-- Chart.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.4.1/chart.min.js"></script>
    <!-- gauge.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gauge.js/1.3.7/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.9.0/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<?=base_url("assets/iCheck/icheck.min.js");?>"></script>
    <!-- Skycons -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/skycons/1396634940/skycons.min.js"></script>
    <!-- Flot -->
    <script src="<?php echo base_url('assets/js/Flot/jquery.flot.js');?>"></script>
    <script src="<?php echo base_url('assets/js/Flot/jquery.flot.pie.js');?>"></script>
    <script src="<?php echo base_url('assets/js/Flot/jquery.flot.time.js');?>"></script>
    <script src="<?php echo base_url('assets/js/Flot/jquery.flot.stack.js');?>"></script>
    <script src="<?php echo base_url('assets/js/Flot/jquery.flot.resize.js');?>"></script>
    <!-- Flot plugins -->
    <script src="<?php echo base_url('assets/js/flot.orderbars/js/jquery.flot.orderBars.js');?>"></script>
    <script src="<?php echo base_url('assets/js/flot-spline/js/jquery.flot.spline.min.js');?>"></script>
    <script src="<?php echo base_url('assets/js/flot.curvedlines/curvedLines.js');?>"></script>
    <!-- DateJS -->
    <script src="<?php echo base_url('assets/js/date-id-ID.js');?>"></script>
    <!-- JQVMap -->
    <script src="<?php echo base_url('assets/vendors/jqvmap/dist/jquery.vmap.js');?>"></script>
    <script src="<?php echo base_url('assets/vendors/jqvmap/dist/maps/jquery.vmap.world.js');?>"></script>
    <script src="<?php echo base_url('assets/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js');?>"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/id.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-daterangepicker/3.0.5/daterangepicker.min.js"></script>
    <!-- bootstrap-datetimepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

    <!-- Datatables -->
    <script src="<?php echo base_url('assets/vendors/datatables.net/js/jquery.dataTables.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/dataTables.buttons.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/jszip/dist/jszip.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/pdfmake/build/pdfmake.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/pdfmake/build/vfs_fonts.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/buttons.flash.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/buttons.html5.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/buttons.print.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-responsive/js/dataTables.responsive.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')?>"></script>
    <script src="<?php echo base_url('assets/vendors/datatables.net-scroller/js/dataTables.scroller.min.js')?>"></script>

    <!-- Custom Theme Scripts -->
    <script src="<?php echo base_url('assets/js/dashboard.js')?>"></script>

<script type="text/javascript">
  $(document).ready(function(){
    $(".klik_menu").click(function(){
      var menu = $(this).attr("id");
      if(menu == 'dasboard'){
        loading();
        $('.badan').load("<?php echo base_url().'dashboard';?>");           
      }else if(menu == 'sbarang'){
        loading();
        $('.badan').load("<?php echo base_url().'sbarang';?>");
      }else if(menu == 'barang'){
        loading();
        $('.badan').load("<?php echo base_url().'barang';?>");           
      }else if(menu == 'wilayah'){
        loading();
        $('.badan').load("<?php echo base_url().'wilayah';?>");           
      }else if(menu == 'user'){
        loading();
        $('.badan').load("<?php echo base_url().'user';?>");           
      }else if(menu == 'pejabat'){
        loading();
        $('.badan').load("<?php echo base_url().'pejabat';?>");           
      }else if(menu == 'pengadaan'){
        loading();
        $('.badan').load("<?php echo base_url().'pengadaan';?>");           
      }else if(menu == 'distribusi'){
        loading();
        $('.badan').load("<?php echo base_url().'distribusi';?>");
      }else if(menu == 'instansi'){
        loading();
        $('.badan').load("<?php echo base_url().'instansi';?>");
      }else if(menu == 'laporan'){
        loading();
        $('.badan').load("<?php echo base_url().'laporan';?>");
    }
  });

    //load page awal
    $('.badan').load("<?php echo base_url().'dashboard';?>");
 
  });
  function loading(){
    $(".badan").html('<center><img src="<?php echo base_url().'assets/images/loader.gif';?>"/><i> loading page ...</i></center>');
    $(".badan").hide();
    $(".badan").fadeIn("slow");
  };
</script>