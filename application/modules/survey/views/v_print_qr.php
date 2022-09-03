<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>SEKAM PADI | Cetak QR Code SKM <?= $satker['n_satker']; ?></title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url("assets/img/apple-icon.png"); ?>" />
    <link rel="icon" type="image/png" href="<?= base_url("assets/img/favicon.png"); ?>" />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="<?= base_url("assets/css/bootstrap.min.css"); ?>" rel="stylesheet" />
    <link href="<?= base_url("assets/css/material-bootstrap-wizard.css"); ?>" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="<?= base_url("assets/survey/style.css"); ?>" rel="stylesheet" />
</head>

<body>
    <div class="image-container set-full-height">

        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="blue" id="wizard">
                            <div class="img-responsive text-center">
                                <img src="<?= base_url('assets/img/logo_pemprov_kalbar.png'); ?>" alt="Logo Pemprov" width="20%">&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="<?= base_url('assets/img/berakhlak.png'); ?>" alt="Berakhlak" width="30%"><br><br>

                            </div>
                            <div class="wizard-header img-responsive">
                                <input type="hidden" name="id_satker" id="id-opd" value="<?= $this->uri->segment(3); ?>">
                                <img src="<?= base_url('assets/img/sekam-padi.png'); ?>" alt="Sekam Padi" width="35%"><br><br>
                                <h4 class="wizard-title"><?= $satker['n_satker']; ?></h4>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <p><i>Scan</i> QR Code dibawah untuk memberikan penilaian atas pelayanan yang kami berikan</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 col-sm-offset-1"></div>
                                    <div class="col-sm-6 img-responsive text-center">
                                        <div id="qrcode" class="img-responsive"></div>
                                        <div id="canvas" class="img-responsive"></div>
                                    </div>
                                    <div class="col-sm-3"></div>
                                </div>
                                <br />
                                <div class="row">
                                    <!-- <div class="container img-reponsive text-center"> -->
                                    <p>&copy; 2020 - <?= date('Y') ?> Biro Organisasi Seda Prov. Kalbar</p>

                                    <!-- </div> -->
                                </div>
                            </div>
                        </div>
                    </div> <!-- wizard container -->
                </div>
            </div> <!-- row -->
        </div> <!--  big container -->

        <div class="footer">
        </div>
    </div>

</body>
<!--   Core JS Files   -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js'></script>
<script src="<?= base_url("assets/js/jquery.bootstrap.js"); ?>" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="<?= base_url("assets/js/material-bootstrap-wizard.js"); ?>"></script>
<script src='<?php echo base_url("assets/js/qrcode.min.js"); ?>'></script>
<script>
    qrcode = new QRCode(document.getElementById("qrcode"));
    id_satker = $('#id-opd').val();
    var link_qr = "<?= base_url(); ?>survey/show_survey_opd/" + id_satker;
    qrcode.clear(); //clear the code.
    qrcode.makeCode(link_qr);
</script>

</html>