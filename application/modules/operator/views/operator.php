<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header card-header-primary">
          <h4 class="card-title "><?= $title; ?></h4>
          <p class="card-category"><?= $subtitle; ?></p>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <button class="btn btn-sm btn-primary btn-round pull-right" onclick="add_()">
              <i class="material-icons">add_circle_outline</i>&nbsp;&nbsp;&nbsp;Operator
            </button>
            <table class="table table-hover" id="table" style="width: 100%;">
              <thead class=" text-primary">
                <th>#</th>
                <th>Username</th>
                <th>Nama OPD</th>
                <th>Hak Akses</th>
                <th>Status</th>
                <th style="width: 10%;">Aksi</th>
              </thead>
              <tbody id="show_data"></tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap modal -->
<div class="modal fade" id="modal_form" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Operator e-SKM</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body form">
        <form action="#" id="form" class="form-horizontal form-label-left">
          <input type="hidden" class="txt_csrfname" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>" style="display: none">
          <input type="hidden" value="" name="id" />
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title modal-kartu"></h4>
              <p class="card-category modal-kategory"></p>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="label-floating">Username</label>
                    <input type="text" class="form-control" name="username">
                    <span class="help-block"></span>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="label-floating">Password</label>
                    <input type="password" class="form-control" name="password">
                    <span class="help-block"></span>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
              <div class="row">
                <div class="col-md-8">
                  <div class="form-group">
                    <label class="label-floating">Perangkat Daerah</label>
                    <select class="form-control form-select2" name="id_satker" id="pilih-opd" style="width: 100%;">
                      <option disabled="" selected="">Pilih Nama OPD</option>
                      <?php foreach ($satker as $row) :
                        echo "<option value=" . $row->id_satker . ">" . $row->n_satker . " </option>";
                      endforeach;
                      ?>
                    </select>
                    <span class="help-block"></span>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="form-group">
                    <label class="label-floating">Hak Akses</label>
                    <select class="form-control form-select2" name="hak_akses" id="hak_akses">
                      <option disabled="" selected="">Pilih Hak Akses</option>
                      <option value="1">Super Admin</option>
                      <option value="2">Admin OPD</option>
                    </select>
                    <span class="help-block"></span>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="form-group">
                    <label class="label-floating">Status</label>
                    <select class="form-control form-select2" name="status" id="status">
                      <option disabled="" selected="">Pilih Status</option>
                      <option value="1">Aktif</option>
                      <option value="0">Non Aktif</option>
                    </select>
                    <span class="help-block"></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">Simpan</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->

<script type="text/javascript">
  var save_method; //for save method string
  var table;
  var token = "<?php echo $this->security->get_csrf_hash(); ?>";

  $(document).ready(function() {

    $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
      return {
        "iStart": oSettings._iDisplayStart,
        "iEnd": oSettings.fnDisplayEnd(),
        "iLength": oSettings._iDisplayLength,
        "iTotal": oSettings.fnRecordsTotal(),
        "iFilteredTotal": oSettings.fnRecordsDisplay(),
        "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
        "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
      };
    };

    //reload button
    $.fn.dataTable.ext.buttons.reload = {
      className: "btn btn-sm btn-round btn-rose",
      text: "<i class='material-icons'>refresh</i>",
      titleAttr: "Reload",
      action: function(e, dt, node, config) {
        dt.ajax.reload();
      }
    };

    //datatables
    table = $('#table').DataTable({

      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "responsive": true,
      "language": {
        url: "<?php echo base_url('assets/vendors/datatables.net/plug-ins/Indonesian-Alternative.json'); ?>",
      },

      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?php echo site_url('operator/ajax_list') ?>",
        "type": "POST",
        "data": function(d) {
          d.<?php echo $this->security->get_csrf_token_name(); ?> = token;
        }
      },

      "dom": "Bfrtip",
      "buttons": [
        // {
        //     extend:"excelHtml5",
        //     className:"btn btn-sm btn-round btn-rose",
        //     title:"List Barang (Master)",
        //     text:"<i class='fa fa-table' aria-hidden='true'></i>",
        //     titleAttr:"Export ke Excel",
        //     exportOptions:{
        //         columns:[1,2,3]
        //     }
        // },
        // {
        //     extend:"pdfHtml5",
        //     className:"btn btn-sm btn-round btn-rose",
        //     pageSize:"A4",
        //     title:"List Operator (Master)",
        //     text:"<i class='material-icons'>picture_as_pdf</i>",
        //     titleAttr:"Export ke PDF",
        //     exportOptions:{
        //         columns:[1, 2, 3]
        //     },
        //     filename:"List Barang"
        // },
        // {
        //     extend:"print",
        //     className:"btn btn-sm btn-round btn-rose",
        //     text:"<i class='material-icons'>print</i>",
        //     titleAttr:"Cetak",
        //     exportOptions:{
        //         columns:[1,2,3]
        //     },
        // },
        "reload"
      ],
      "pageLength": 5,
      "order": [
        [1, 'asc']
      ],
      "rowCallback": function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }
    });

    // csrf datatable
    table.on('xhr.dt', function(e, settings, json, xhr) {
      token = json.<?= $this->security->get_csrf_token_name(); ?>;
    });

    //set input/textarea/select event when change value, remove class error and remove text help block 
    $("input").change(function() {
      $(this).parent().parent().removeClass('has-error');
      $(this).next().empty();
    });
    $("textarea").change(function() {
      $(this).parent().parent().removeClass('has-error');
      $(this).next().empty();
    });
    $("select").change(function() {
      $(this).parent().parent().removeClass('has-error');
      $(this).next().empty();
    });

  });



  function add_() {
    save_method = 'add';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string
    $('#modal_form').modal('show'); // show bootstrap modal
    $('.modal-kartu').text('Form Tambah Operator'); // Set Title to Bootstrap modal title
  }

  function edit_(id) {
    save_method = 'update';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string

    //Ajax Load data from ajax
    $.ajax({
      url: "<?php echo site_url('operator/ajax_edit') ?>/" + id,
      type: "GET",
      dataType: "JSON",
      success: function(data) {

        $('[name="id"]').val(data.id_user);
        $('[name="username"]').val(data.username);
        $('[name="id_satker"]').val(data.id_satker);
        $('[name="hak_akses"]').val(data.hak_akses);
        $('[name="status"]').val(data.status);
        $('#modal_form').modal('show'); // show bootstrap modal when complete loaded
        $('.modal-kartu').text('Form Edit Operator'); // Set title to Bootstrap modal title

      },
      error: function(jqXHR, textStatus, errorThrown) {
        alert('Error get data from ajax');
      }
    });
  }

  function reload_table() {
    table.ajax.reload(null, false); //reload datatable ajax
  }

  function save() {
    $('#btnSave').text('saving...'); //change button text
    $('#btnSave').attr('disabled', true); //set button disable 
    var url;

    if (save_method == 'add') {
      url = "<?php echo site_url('operator/ajax_add') ?>";
    } else {
      url = "<?php echo site_url('operator/ajax_update') ?>";
    }

    // ajax adding data to database
    $.ajax({
      url: url,
      type: "POST",
      data: $('#form').serialize(),
      dataType: "JSON",
      success: function(data) {

        if (data.status) //if success close modal and reload ajax table
        {
          $('#modal_form').modal('hide');
          reload_table();
        } else {
          for (var i = 0; i < data.inputerror.length; i++) {
            $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error'); //select parent twice to select div form-group class and add has-error class
            $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]); //select span help-block class set text error string
          }
        }
        $('#btnSave').text('save'); //change button text
        $('#btnSave').attr('disabled', false); //set button enable 


      },
      error: function(jqXHR, textStatus, errorThrown) {
        alert('Error adding / update data');
        $('#btnSave').text('Simpan'); //change button text
        $('#btnSave').attr('disabled', false); //set button enable 

      }
    });
  }

  function delete_(id) {
    if (confirm('Apakah anda yakin ingin menghapus data ini?')) {
      // ajax delete data to database
      $.ajax({
        url: "<?php echo site_url('operator/ajax_delete') ?>/" + id,
        type: "POST",
        dataType: "JSON",
        success: function(data) {
          //if success reload ajax table
          $('#modal_form').modal('hide');
          reload_table();
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert('Error deleting data');
        }
      });

    }
  }
</script>