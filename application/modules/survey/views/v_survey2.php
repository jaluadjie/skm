<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>SEKAM PADI <?= $satker['n_satker']; ?></title>

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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.3/skins/flat/green.min.css" rel="stylesheet">

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="<?= base_url("assets/survey/style.css"); ?>" rel="stylesheet" />
</head>

<body>
    <div class="image-container set-full-height" style="background-image: url('<?php echo base_url("assets/img/wallpapertip_material-design-wallpapers-desktop_810349.jpg"); ?>')">

        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="img-responsive text-center">
                            <img src="<?= base_url('assets/img/logo_pemprov_kalbar.png'); ?>" alt="Logo Pemprov" width="20%">&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="<?= base_url('assets/img/ro_orgs.png'); ?>" alt="Logo Biro Organisasi" width="15%">&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="<?= base_url('assets/img/berakhlak.png'); ?>" alt="Berakhlak" width="30%">&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="<?= base_url('assets/img/brand-kalbar.png'); ?>" alt="Brand Kalbar" width="15%"><br><br>
                        </div>
                        <div class="card wizard-card" data-color="blue" id="wizard">
                            <form action="#" id="form_survey">
                                <input type="hidden" name="id_satker" value="<?= $satker['id_satker']; ?>">
                                <input type="hidden" name="id_layanan" value="<?= $layanan['id_layanan']; ?>">
                                <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                                <div class="wizard-header img-responsive">
                                    <img src="<?= base_url('assets/img/sekam-padi.png'); ?>" alt="Sekam Padi" width="40%">
                                    <h3 class="wizard-title"><?= $satker['n_satker']; ?></h3>
                                    <h5 class="text-center">Jenis pelayanan yang diterima: <strong><?= $layanan['n_layanan']; ?></strong></h5>
                                </div>
                                <div class="wizard-navigation">
                                    <ul>
                                        <li><a href="#responden" data-toggle="tab">Responden</a></li>
                                        <li><a href="#penilaianUmum" data-toggle="tab">Penilaian Umum</a></li>
                                        <li><a href="#survey" data-toggle="tab">SKM</a></li>
                                        <li><a href="#saran" data-toggle="tab">Kritik/Saran</a></li>
                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane" id="responden">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text">Mari mulai dengan hal mendasar.</h4>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Berapa usia anda?</label>
                                                    <input name="umur" type="number" class="form-control" min="16" max="100" required>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Apa jenis kelamin anda?</label>
                                                    <select class="form-control" name="jk" required>
                                                        <option disabled="" selected=""></option>
                                                        <option value="lk"> Laki-Laki </option>
                                                        <option value="pr"> Perempuan </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Apa pendidikan terakhir anda?</label>
                                                    <select class="form-control" name="pendidikan" required>
                                                        <option disabled="" selected=""></option>
                                                        <?php foreach ($pendidikan as $row) :
                                                            echo "<option value=" . $row->id_pendidikan . ">" . $row->n_pendidikan . " </option>";
                                                        endforeach;
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Apa pekerjaan anda?</label>
                                                    <select class="form-control" name="pekerjaan" required>
                                                        <option disabled="" selected=""></option>
                                                        <?php foreach ($pekerjaan as $row) :
                                                            echo "<option value=" . $row->id_pekerjaan . ">" . $row->n_pekerjaan . " </option>";
                                                        endforeach;
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="penilaianUmum">
                                        <h4 class="info-text">Bagaimana penilaian Anda terhadap pelayanan kami secara umum? </h4>
                                        <div class="row">
                                            <div class="col-sm-12 col-sm-offset-3 form-group">
                                                <?php
                                                foreach ($penilaian_umum as $row) {
                                                    switch ($row['bobot_nilai']) {
                                                        case 4:
                                                            $title = "Jika anda sangat puas dengan pelayanan kami";
                                                            // $icons = "sentiment_very_satisfied";
                                                            $icons = "grinning-face-with-big-eyes_1f603";
                                                            $h6 = "Sangat Baik";
                                                            break;

                                                        case 3:
                                                            $title = "Jika anda puas dengan pelayanan kami";
                                                            // $icons = "sentiment_satisfied";
                                                            $icons = "slightly-smiling-face_1f642";
                                                            $h6 = "Baik";
                                                            break;

                                                        case 2:
                                                            $title = "Jika anda tidak puas dengan pelayanan kami";
                                                            // $icons = "sentiment_dissatisfied";
                                                            $icons = "neutral-face_1f610";
                                                            $h6 = "Kurang Baik";
                                                            break;

                                                        default:
                                                            $title = "Jika anda sangat tidak puas dengan pelayanan kami";
                                                            // $icons = "sentiment_very_dissatisfied";
                                                            $icons = "disappointed-face_1f61e";
                                                            $h6 = "Buruk";
                                                            break;
                                                    }
                                                ?>
                                                    <div class="col-sm-3">
                                                        <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="<?= $title; ?>">
                                                            <input type="radio" name="umum" value="<?= $row['bobot_nilai']; ?>">
                                                            <div class="icon img-responsive">
                                                                <!-- <i class="material-icons"><//echo icons></i> -->
                                                                <img src="<?= base_url('assets/img/' . $icons . '.png'); ?>" width="100%">
                                                            </div>
                                                            <h6><?= $h6; ?></h6>
                                                        </div>
                                                    </div>
                                                <?php
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="survey">
                                        <h4 class="info-text">Berikan penilaian terhadap poin-poin dibawah ini. </h4>
                                        <div class="row">
                                            <?php
                                            foreach ($pertanyaan as $q) {
                                                $jawaban = $this->survey_model->get_jawaban($q['id_pertanyaan'])->result_array();

                                                if (fmod($q['id_pertanyaan'], 2) == 0) {
                                                    $divClass = "col-sm-5 col-sm-offset-1";
                                                } else {
                                                    $divClass = "col-sm-5";
                                                }
                                            ?>
                                                <div class="<?= $divClass; ?>">
                                                    <div>
                                                        <div class="form-group label-floating">
                                                            <h6><?= $q['n_pertanyaan']; ?></h6>
                                                            <input type="hidden" name="pertanyaan_<?= $q['id_pertanyaan']; ?>" value="<?= $q['id_pertanyaan']; ?>">
                                                            <?php
                                                            foreach ($jawaban as $a) {
                                                                echo "<div class='radio'><input type='radio' class='flat' name='jawaban_" . $q['id_pertanyaan'] . "' value='" . $a['bobot_nilai'] . "'>&nbsp;" . $a['n_jawaban'] . "</div>";
                                                            }
                                                            ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="saran">
                                        <div class="row">
                                            <h4 class="info-text"> Berikan kami kritik/saran/masukan yang membangun. </h4>
                                            <div class="col-sm-8 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Kritik/Saran/Masukan</label>
                                                    <textarea class="form-control" placeholder="" rows="9" name="saran"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Contoh</label>
                                                    <p class="description">"Petugas pelayanan sangat ramah, ruang tunggu jg sangat comfy. Terus tingkatkan!!!"</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-fill btn-primary btn-wd' name='next' value='Next' />
                                        <input type='button' class='btn btn-finish btn-fill btn-primary btn-wd' name='finish' onclick="save()" id="btnSave" value='Selesai' />
                                    </div>
                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Prev.' />
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
            <div class="container img-reponsive text-center">
                <a href="http://biroorganisasi.kalbarprov.go.id">Biro Organisasi Seda Prov. Kalbar</a>
                &copy; 2020 - <?= date('Y') ?>
            </div>
        </div>
    </div>

    <!-- Modal jika sukses -->
    <div class="modal fade" id="modalSuccess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Terima kasih</h4>
                </div>
                <div class="modal-body">
                    <p>Penilaian dan masukkan Anda sangat membantu kami untuk berubah menjadi lebih baik.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-wd" data-dismiss="modal">Tutup</button>
                </div>
            </div>
        </div>
    </div>

</body>
<!--   Core JS Files   -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js'></script>
<script src="<?= base_url("assets/js/jquery.bootstrap.js"); ?>" type="text/javascript"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.3/icheck.min.js'></script>

<!--  Plugin for the Wizard -->
<script src="<?= base_url("assets/js/material-bootstrap-wizard.js"); ?>"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js'></script>

<script>
    // $("#form_survey").validate({
    //     rules: {
    //         umur: {
    //             number: true
    //         }
    //     },
    //     messages: {
    //         umur: "Harap masukan angka saja!",
    //         jk: "Harap pilih jenis kelamin anda",
    //         pendidikan: "Harap pilih jenjang pendidikan terakhir anda",
    //         pekerjaan: "Harap pilih jenis profesi anda"
    //     }
    // });

    function save() {
        $('#btnSave').text('Saving...');

        // ajax adding data to database
        $.ajax({
            url: "<?= base_url('survey/ajax_add'); ?>",
            type: "POST",
            data: $('#form_survey').serialize(),
            dataType: "JSON",
            success: function(data) {

                if (data.status) //if success show modal and reload ajax table
                {
                    $('#modalSuccess').modal('show');
                    $('#btnSave').text('Tersimpan'); //change button text
                    $('#btnSave').attr('disabled', true); //set button enable 
                } else {
                    for (var i = 0; i < data.inputerror.length; i++) {
                        $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error'); //select parent twice to select div form-group class and add has-error class
                        $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]); //select span help-block class set text error string
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Gagal menyimpan data');
                $('#btnSave').text('Coba lagi'); //change button text
                $('#btnSave').attr('disabled', false); //set button enable 

            }
        });
    }

    // iCheck
    $(document).ready(function() {
        if ($("input.flat")[0]) {
            $(document).ready(function() {
                $('input.flat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });
        }
    });
    // /iCheck
</script>

</html>