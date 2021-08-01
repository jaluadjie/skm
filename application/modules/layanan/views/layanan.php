<div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title "><?=$title;?></h4>
                  <p class="card-category"><?=$subtitle;?></p>
                </div>
                <div class="card-body table-reponsive">
                  <!-- <div class="table-responsive"> -->
                    <button class="btn btn-sm btn-primary btn-round pull-right" onclick="add_()">
                      <i class="material-icons">add_circle_outline</i>&nbsp;&nbsp;&nbsp;Layanan
                    </button>
                    <table class="table table-hover" id="table" style="width: 100%;">
                      <thead class=" text-primary">
                        <th>#</th>
                        <th>OPD</th>
                        <th>Jenis Layanan</th>
                        <th>Biaya</th>
                        <th>Standar Waktu</th>
                        <!-- <th>Spesifikasi</th> -->
                        <th style="width: 10%;">Aksi</th>
                      </thead>
                      <tbody id="show_data"></tbody>
                    </table>
                  <!-- </div> -->
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
                    <input type="hidden" value="" name="id"/> 
                    <div class="card">
                      <div class="card-header card-header-primary">
                        <h4 class="card-title modal-kartu"></h4>
                        <p class="card-category modal-kategory"></p>
                      </div>
                      <div class="card-body">
                        <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                              <label class="bmd-label-floating">Perangkat Daerah</label>
                                <select class="form-control" name="id_satker" id="pilih-opd">
                                  <option disabled="" selected="">Pilih Nama OPD</option>
                                    <?php foreach($satker as $row):
                                      echo "<option value=".$row->id_satker.">".$row->n_satker." </option>";
                                    endforeach;
                                    ?>
                                  </select>
                                  <span class="help-block"></span>
                            </div>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                          <div class="col-md-8">
                            <div class="form-group">
                              <label class="bmd-label-floating">Nama Layanan</label>
                              <input type="text" class="form-control" name="n_layanan">
                              <span class="help-block"></span>
                            </div>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group">
                              <label class="bmd-label-floating">Dasar Hukum</label>
                              <textarea class="form-control" name="n_dasar hukum" rows="3"></textarea>
                              <span class="help-block"></span>
                            </div>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                          <div class="col-md-6">
                            <div class="form-group">
                              <label class="bmd-label-floating">Biaya</label>
                              <input type="text" class="form-control" name="biaya">
                              <span class="help-block"></span>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-group">
                              <label class="bmd-label-floating">Standar Waktu</label>
                              <input type="text" class="form-control" name="s_waktu">
                              <span class="help-block"></span>
                            </div>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group">
                              <label class="bmd-label-floating">Spesifikasi</label>
                              <textarea class="form-control" name="spesifikasi" rows="3"></textarea>
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

$(document).ready(function() {

    $.fn.dataTableExt.oApi.fnPagingInfo = function (oSettings)
        {
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
        text:"<i class='material-icons'>refresh</i>",
        titleAttr:"Reload",
        action: function ( e, dt, node, config ) {
            dt.ajax.reload();
        }
    };

    //datatables
    table = $('#table').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "responsive": true,
		    "language" : {
         url: "<?php echo base_url('assets/vendors/datatables.net/plug-ins/Indonesian-Alternative.json');?>",
        },

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('layanan/ajax_list')?>",
            "type": "POST"
        },

        "dom":"Bfrtip",
        "buttons":[
            {
                extend:"excelHtml5",
                className:"btn btn-sm btn-round btn-rose",
                title:"List Layanan (Master)",
                text:"<i class='fa fa-table' aria-hidden='true'></i>",
                titleAttr:"Export ke Excel",
                exportOptions:{
                    columns:[1,2,3,4]
                }
            },
            {
                extend:"pdfHtml5",
                className:"btn btn-sm btn-round btn-rose",
                pageSize:"A4",
                title:"List Layanan (Master)",
                text:"<i class='material-icons'>picture_as_pdf</i>",
                titleAttr:"Export ke PDF",
                exportOptions:{
                    columns:[1, 2, 3,4]
                },
                filename:"List Layanan"
            },
            {
                extend:"print",
                className:"btn btn-sm btn-round btn-rose",
                text:"<i class='material-icons'>print</i>",
                titleAttr:"Cetak",
                exportOptions:{
                    columns:[1,2,3,4]
                },
            },
            "reload"
        ],
        "pageLength":10,
        "order": [[1, 'asc']],
        "rowCallback": function (row, data, iDisplayIndex) {
                        var info = this.fnPagingInfo();
                        var page = info.iPage;
                        var length = info.iLength;
                        var index = page * length + (iDisplayIndex + 1);
                        $('td:eq(0)', row).html(index);
                    }
    });

    //set input/textarea/select event when change value, remove class error and remove text help block 
    $("input").change(function(){
        $(this).parent().parent().removeClass('has-error');
        $(this).next().empty();
    });
    $("textarea").change(function(){
        $(this).parent().parent().removeClass('has-error');
        $(this).next().empty();
    });
    $("select").change(function(){
        $(this).parent().parent().removeClass('has-error');
        $(this).next().empty();
    });

});

function add_()
{
    save_method = 'add';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string
    $('#modal_form').modal('show'); // show bootstrap modal
    $('.modal-kartu').text('Form Tambah Layanan'); // Set Title to Bootstrap modal title
}

function edit_(id)
{
    save_method = 'update';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string

    //Ajax Load data from ajax
    $.ajax({
        url : "<?php echo site_url('layanan/ajax_edit')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {

            $('[name="id"]').val(data.id_layanan);
            $('[name="id_satker"]').val(data.id_satker);
            $('[name="n_layanan"]').val(data.n_layanan);
            $('[name="n_dasar_hukum"]').val(data.n_dasar_hukum);
            $('[name="biaya"]').val(data.biaya);
            $('[name="s_waktu"]').val(data.standar_waktu);
            $('[name="spesifikasi"]').val(data.spesifikasi);
            $('#modal_form').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-kartu').text('Form Edit Layanan'); // Set title to Bootstrap modal title

        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}

function reload_table()
{
    table.ajax.reload(null,false); //reload datatable ajax
}

function save()
{
    $('#btnSave').text('saving...'); //change button text
    $('#btnSave').attr('disabled',true); //set button disable 
    var url;

    if(save_method == 'add') {
        url = "<?php echo site_url('layanan/ajax_add')?>";
    } else {
        url = "<?php echo site_url('layanan/ajax_update')?>";
    }

    // ajax adding data to database
    $.ajax({
        url : url,
        type: "POST",
        data: $('#form').serialize(),
        dataType: "JSON",
        success: function(data)
        {

            if(data.status) //if success close modal and reload ajax table
            {
                $('#modal_form').modal('hide');
                reload_table();
            }
            else
            {
                for (var i = 0; i < data.inputerror.length; i++) 
                {
                    $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error'); //select parent twice to select div form-group class and add has-error class
                    $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]); //select span help-block class set text error string
                }
            }
            $('#btnSave').text('save'); //change button text
            $('#btnSave').attr('disabled',false); //set button enable 


        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error adding / update data');
            $('#btnSave').text('Simpan'); //change button text
            $('#btnSave').attr('disabled',false); //set button enable 

        }
    });
}

function delete_(id)
{
    if(confirm('Apakah anda yakin ingin menghapus data ini?'))
    {
        // ajax delete data to database
        $.ajax({
            url : "<?php echo site_url('layanan/ajax_delete')?>/"+id,
            type: "POST",
            dataType: "JSON",
            success: function(data)
            {
                //if success reload ajax table
                $('#modal_form').modal('hide');
                reload_table();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error deleting data');
            }
        });

    }
}

// $("#pilih-opd").selectpicker();

</script>