<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Survey Kepuasan Masyarakat</title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
  <meta name="viewport" content="width=device-width" />
  <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url("assets/img/apple-icon.png"); ?>" />
  <link rel="icon" type="image/png" href="<?= base_url("assets/img/favicon.png"); ?>" />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="<?= base_url("assets/css/bootstrap.min.css"); ?>" rel="stylesheet" />
  <link href="<?= base_url("assets/css/material-bootstrap-wizard.css"); ?>" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="<?php echo base_url("assets/survey/style.css"); ?>">

</head>
<?php $this->load->library('secure'); ?>

<body>
  <!-- partial:index.partial.html -->

  <body>
    <div class="image-container set-full-height" style="background-image: url('<?php echo base_url("assets/img/wallpapertip_material-design-wallpapers-desktop_810349.jpg"); ?>')">

      <!--   Big container   -->
      <div class="container">
        <div class="row">
          <div class="col-sm-8 col-sm-offset-2">
            <!-- Wizard container -->
            <div class="wizard-container">
              <div class="img-responsive text-center">
                <img src="<?= base_url('assets/img/logo_pemprov_kalbar.png'); ?>" alt="Logo Pemprov" width="20%">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="<?= base_url('assets/img/ro_orgs.png'); ?>" alt="Logo Biro Organisasi" width="15%">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="<?= base_url('assets/img/berakhlak.png'); ?>" alt="Berakhlak" width="30%">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="<?= base_url('assets/img/brand-kalbar.png'); ?>" alt="Brand Kalbar" width="15%"><br><br>
              </div>
              <div class="card wizard-card" data-color="blue" id="wizard">
                <form action="" method="">
                  <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->

                  <div class="wizard-header img-responsive">
                    <img src="<?= base_url('assets/img/sekam-padi.png'); ?>" alt="Sekam Padi" width="40%">
                    <h3 class="wizard-title">Hai, Selamat Datang</h3>
                    <h5 style="padding-left: 5px;padding-right: 5px;">Bantu kami menjadi lebih baik dengan memberikan penilaian atas pelayanan yang diterima.</h5>
                  </div>


                  <div class="wizard-navigation">
                    <ul>
                      <li><a href="#details" data-toggle="tab">Silahkan Pilih Perangkat Daerah yang akan dinilai</a></li>
                    </ul>
                  </div>

                  <div class="tab-content">
                    <div class="tab-pane" id="details">
                      <div class="row">

                        <div class="col-sm-12">
                          <div id="test-opd">
                            <div class="input-group">
                              <span class="input-group-addon">
                                <i class="material-icons">business</i>
                              </span>
                              <div class="form-group label-floating">
                                <label for="pilih-opd" class="control-label">Nama Perangkat Daerah </label>
                                <select class="form-select" name="opd" id="pilih-opd" style="width: 100%;">
                                  <option disabled selected>Silahkan Pilih Nama OPD</option>
                                  <?php foreach ($nama_opd as $row) :
                                    echo "<option value=" . $this->secure->encrypt_url($row->id_satker) . ">" . $row->n_satker . " </option>";
                                  endforeach;
                                  ?>
                                </select>
                              </div>
                            </div>
                          </div>

                          <div id="test-layanan" style="display:none;">
                            <div class="input-group pilih-jenis-layanan">
                              <span class="input-group-addon">
                                <i class="material-icons">more_time</i>
                              </span>
                              <div class="form-group label-floating">
                                <label for="pilih-layanan" class="control-label">Nama Jenis Layanan</label>
                                <select class="form-select" name="layanan" id="pilih-layanan" style="width: 100%;">
                                  <!-- <option disabled="" selected="">Pilih Jenis Layanan</option> -->
                                </select>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="wizard-footer" style="display:none;">
                    <div class="text-center">
                      <button type="button" class="btn btn-success btn-wd" id="show-qr">Show QR</button>
                      <!-- <button type="button" class="btn btn-success btn-wd" id="show-qr2">Show QR2</button> -->
                      <a id="menuju-link" href="#" class="btn btn-primary btn-wd" role="button">Menuju Tautan</a>
                    </div>
                    <div class="clearfix"></div>
                  </div>
                </form>
              </div>
            </div> <!-- wizard container -->
          </div>
        </div> <!-- row -->
      </div> <!--  big container -->

      <div class="footer">
        <div class="container text-center">
          <a href="http://biroorganisasi.kalbarprov.go.id">Biro Organisasi Setda Prov. Kalbar</a>
          &copy; 2020 - <?= date('Y') ?>
        </div>
      </div>
    </div>

    <!-- QR Code Generate -->
    <div class="modal fade" id="qrModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Scan QRCode dibawah</h4>
          </div>
          <div class="modal-body">
            <div id="qrcode" class="img-responsive"></div>
            <div id="canvas" class="img-responsive"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger btn-wd" data-dismiss="modal">Tutup</button>
          </div>
        </div>
      </div>
    </div>
  </body>
  <!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js'></script>
  <script type="text/javascript" src="https://unpkg.com/qr-code-styling@1.5.0/lib/qr-code-styling.js"></script>
  <script src='<?php echo base_url("assets/survey/script.js"); ?>'></script>
  <script src='<?php echo base_url("assets/js/qrcode.min.js"); ?>'></script>
  <script>
    $(document).ready(function() {

      // $('#pilih-opd').select2();
      // $('#pilih-layanan').select2({
      //   width: 'resolve'
      // });
      $('#pilih-opd').select2().change(function() {
        $('#test-layanan').show('slow');
        var ids = $(this).val();
        $.ajax({
          url: "<?php echo site_url('frontpage/get_layanan_by_id'); ?>",
          method: "POST",
          data: {
            id: ids
          },
          async: true,
          dataType: 'json',
          success: function(data) {

            var html = '';
            var i;
            html += '<option disabled selected>Silahkan Pilih Jenis Layanan</option>';
            for (i = 0; i < data.length; i++) {
              html += '<option value=' + btoa(data[i].id_layanan) + '>' + data[i].n_layanan + '</option>';
            }
            $('#pilih-layanan').html(html);
          }
        });
        return false;
      });

      $('#pilih-layanan').select2().change(function() {
        id_satker = $('#pilih-opd').val();
        id_layanan = $('#pilih-layanan').val();
        let link = "<?php echo base_url('survey/index/'); ?>" + id_satker + "/" + id_layanan;
        document.getElementById("menuju-link").href = link;
        document.getElementById("menuju-link").target = "_blank";
        $('.wizard-footer').show('slow');
      });

      $("#show-qr").click(function() {
        $('#qrcode').empty();
        qrcode = new QRCode(document.getElementById("qrcode"));
        id_satker = $('#pilih-opd').val();
        id_layanan = $('#pilih-layanan').val();
        var link_qr = "<?= base_url(); ?>/survey/index/" + id_satker + "/" + id_layanan;
        qrcode.clear(); //clear the code.
        qrcode.makeCode(link_qr);
        $("#qrModal").modal('show');
      });
    });
  </script>

</body>

</html>