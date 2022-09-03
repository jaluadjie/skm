<?php if ($hak_akses == 1) {
  $cols = "col-lg-3 col-md-6 col-sm-6";
} else {
  $cols = "col-lg-4 col-md-4 col-sm-6";
}; ?>
<div class="container-fluid">
  <div class="row">
    <div class="<?= $cols; ?>">
      <div class="card card-stats">
        <div class="card-header card-header-warning card-header-icon">
          <div class="card-icon">
            <i class="material-icons">people</i>
          </div>
          <p class="card-category">Responden</p>
          <h3 class="card-title"><?= $jml_responden; ?>
            <small>Orang</small>
          </h3>
        </div>
        <div class="card-footer">
          <div class="stats">
            <a href="#" class="klik-menu"></a> <i class="material-icons">update</i> Just Updated
          </div>
        </div>
      </div>
    </div>

    <?php if ($hak_akses == 1) { ?>
      <div class="<?= $cols; ?>">
        <div class="card card-stats">
          <div class="card-header card-header-success card-header-icon">
            <div class="card-icon">
              <i class="material-icons">store</i>
            </div>
            <p class="card-category">Jumlah UPP terdaftar</p>
            <h3 class="card-title"><?= $jml_satker; ?> <small>UPP</small></h3>

          </div>
          <div class="card-footer">
            <div class="stats">
              <i class="material-icons">update</i> Just Updated
            </div>
          </div>
        </div>
      </div>
    <?php }; ?>
    <div class="<?= $cols; ?>">
      <div class="card card-stats">
        <div class="card-header card-header-danger card-header-icon">
          <div class="card-icon">
            <i class="material-icons">info_outline</i>
          </div>
          <p class="card-category">Jumlah Layanan</p>
          <h3 class="card-title"><?= $jml_layanan; ?> <small>Layanan</small></h3>
        </div>
        <div class="card-footer">
          <div class="stats">
            <i class="material-icons">update</i> Just Updated
          </div>
        </div>
      </div>
    </div>
    <div class="<?= $cols; ?>">
      <div class="card card-stats">
        <div class="card-header card-header-info card-header-icon">
          <div class="card-icon">
            <i class="material-icons">fact_check</i>
          </div>
          <p class="card-category">NILAI IKM</p>
          <h3 class="card-title"><strong>89</strong></h3>
        </div>
        <div class="card-footer">
          <div class="stats">
            <i class="material-icons">update</i> Just Updated
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-8">
      <div class="card">
        <div class="card-header card-header-info">
          <h4 class="card-title ">Chart Responden</h4>
          <p class="card-category">berdasarkan Jenis Kelamin, Pendidikan, Pekerjaan dan Rentang Usia</p>
        </div>
        <div class="card-body table-responsive">
          <div id="main" style="width:100% ;height:450px"></div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <!-- <div class="card-header card-header-warning">
          <h4 class="card-title ">Laman Survey</h4>
        </div> -->
        <div class="card-body table-responsive">
          <a href="<?= base_url('survey/show_survey_opd/' . $this->secure->encrypt_url($id_satker)) ?>" target="_blank" class="btn btn-primary pull-right">Laman Survey</a>
          <a href="<?= base_url('survey/cetak_qr/' . $this->secure->encrypt_url($id_satker)) ?>" target="_blank" class="btn btn-warning pull-left">Cetak QR Code</a>

        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  // Initialize the echarts instance based on the prepared dom
  var myChart = echarts.init(document.getElementById('main'));

  // Specify the configuration items and data for the chart
  var option = {
    dataset: [{
        source: [
          ['Nama', 'Jumlah', 'Filter'],
          <?php
          foreach ($chart_responden_jk as $row) {
            // $nama = $row->nama;
            if ($row->nama == 'lk') {
              $nama = 'Laki-laki';
            } else {
              $nama = 'Perempuan';
            }
            echo "['" . $nama . "'," . $row->jumlah . ",'" . $row->filter . "'],";
          }

          foreach ($chart_responden_edu as $row) {
            echo "['" . $row->nama . "'," . $row->jumlah . ",'" . $row->filter . "'],";
          }

          foreach ($chart_responden_job as $row) {
            echo "['" . $row->nama . "'," . $row->jumlah . ",'" . $row->filter . "'],";
          }

          foreach ($chart_responden_age as $row) {
            echo "['" . $row->umur_group . "'," . $row->umur_count . ",'" . $row->filter . "'],";
          }
          ?>
        ]
      },
      {
        transform: {
          type: 'filter',
          config: {
            dimension: 'Filter',
            value: 'jk'
          }
        }
      },
      {
        transform: {
          type: 'filter',
          config: {
            dimension: 'Filter',
            value: 'edu'
          }
        }
      },
      {
        transform: {
          type: 'filter',
          config: {
            dimension: 'Filter',
            value: 'job'
          }
        },
      },
      {
        transform: {
          type: 'filter',
          config: {
            dimension: 'Filter',
            value: 'usia'
          }
        },
      }
    ],

    tooltip: {
      trigger: 'item'
    },

    series: [{
        name: 'Jenis Kelamin',
        type: 'pie',
        radius: 80,
        datasetIndex: 1
      },
      {
        name: 'Pendidikan',
        type: 'pie',
        radius: 80,
        datasetIndex: 2
      },
      {
        name: 'Pekerjaan',
        type: 'pie',
        radius: 80,
        datasetIndex: 3
      },
      {
        name: 'Rentang Usia',
        type: 'pie',
        radius: 80,
        datasetIndex: 4
      }
    ],

    media: [{
        query: {
          minAspectRatio: 1
        },
        option: {
          series: [{
              center: ['25%', '30%'],
              radius: 80
            },
            {
              center: ['75%', '30%'],
              radius: 80
            },
            {
              center: ['25%', '75%'],
              radius: 80
            },
            {
              center: ['75%', '75%'],
              radius: 80
            }
          ]
        }
      },
      {
        option: {
          series: [{
              center: ['50%', '15%'],
              radius: 40
            },
            {
              center: ['50%', '40%'],
              radius: 40
            },
            {
              center: ['50%', '65%'],
              radius: 40
            },
            {
              center: ['50%', '90%'],
              radius: 40
            }
          ]
        }
      }
    ],

    emphasis: {
      itemStyle: {
        shadowBlur: 10,
        shadowOffsetX: 0,
        shadowColor: 'rgba(0, 0, 0, 0.5)'
      }
    }
  };

  // Display the chart using the configuration items and data just specified.
  myChart.setOption(option);
  window.onresize = function() {
    myChart.resize();
  };
</script>