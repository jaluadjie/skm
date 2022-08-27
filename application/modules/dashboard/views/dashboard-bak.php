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
                        <i class="material-icons">update</i> Just Updated
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
        <div class="col-lg-8 col-md-12">
            <div class="card">
                <div class="card-header card-header-tabs card-header-warning">
                    <div class="nav-tabs-navigation">
                        <div class="nav-tabs-wrapper">
                            <span class="nav-tabs-title">Chart Responden:</span>
                            <ul class="nav nav-tabs" data-tabs="tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#tab_jk" data-toggle="tab">
                                        <i class="material-icons">people_alt</i> Jenis Kelamin
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#tab_edu" data-toggle="tab">
                                        <i class="material-icons">book</i> Pendidikan
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#tab_job" data-toggle="tab">
                                        <i class="material-icons">business</i> Pekerjaan
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#tab_age" data-toggle="tab">
                                        <i class="material-icons">follow_the_signs</i> Rentang Usia
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#tab_coba" data-toggle="tab">
                                        <i class="material-icons">follow_the_signs</i> Coba Apache Chart
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#tab_coba2" data-toggle="tab">
                                        <i class="material-icons">follow_the_signs</i> Coba Dataset
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_jk">
                            <div id="chart_jk"></div> <!-- MENAMPILKAN CHART RESPONDEN BERDASARKAN JK -->
                        </div>
                        <div class="tab-pane" id="tab_edu">
                            <div id="chart_edu"></div> <!-- MENAMPILKAN CHART RESPONDEN BERDASARKAN PENDIDIKAN -->
                        </div>
                        <div class="tab-pane" id="tab_job">
                            <div id="chart_job"></div> <!-- MENAMPILKAN CHART RESPONDEN BERDASARKAN Pekerjaan -->
                        </div>
                        <div class="tab-pane" id="tab_age">
                            <div id="chart_age"></div> <!-- MENAMPILKAN CHART RESPONDEN BERDASARKAN Rentang Usia -->
                        </div>
                        <div class="tab-pane" id="tab_coba">
                            <div id="main" style="width:100%; height:400px;"></div> <!-- MENAMPILKAN CHART RESPONDEN BERDASARKAN Rentang Usia -->
                        </div>
                        <div class="tab-pane" id="tab_coba2">
                            <div id="main3" style="width:100%; height:400px;"></div> <!-- MENAMPILKAN CHART RESPONDEN BERDASARKAN Rentang Usia -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title ">Chart Responden</h4>
                    <p class="card-category">berdasarkan Jenis Kelamin, Pendidikan, Pekerjaan dan Rentang Usia</p>
                </div>
                <div class="card-body table-responsive">
                    <div id="main2" style="width:100% ;height:450px"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    google.charts.load('current', {
        'packages': ['corechart']
    });

    google.charts.setOnLoadCallback(drawRespondenChartByJK);
    google.charts.setOnLoadCallback(drawRespondenChartByEdu);
    google.charts.setOnLoadCallback(drawRespondenChartByJob);
    google.charts.setOnLoadCallback(drawRespondenChartByAge);

    function drawRespondenChartByJK() { //Chart Responden berdasarkan JK

        var data = new google.visualization.arrayToDataTable([
            ['Jenis Kelamin', 'Jumlah'],
            <?php
            foreach ($chart_responden_jk as $row) {
                // $nama = $row->nama;
                if ($row->nama == 'lk') {
                    $nama = 'Laki-laki';
                } else {
                    $nama = 'Perempuan';
                }
                echo "['" . $nama . "'," . $row->jumlah . "],";
            } ?>
        ]);

        var options = {
            title: 'Responden berdasarkan jenis kelamin',
            width: 500,
            height: 300
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_jk'));
        chart.draw(data, options);

    }

    function drawRespondenChartByEdu() { //Chart Responden berdasarkan Pendidikan

        var data = new google.visualization.arrayToDataTable([
            ['Pendidikan', 'Jumlah'],
            <?php
            foreach ($chart_responden_edu as $row) {
                echo "['" . $row->nama . "'," . $row->jumlah . "],";
            } ?>
        ]);

        var options = {
            title: 'Responden berdasarkan Pendidikan',
            width: 500,
            height: 300
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_edu'));
        chart.draw(data, options);

    }

    function drawRespondenChartByJob() { //Chart Responden berdasarkan Pekerjaan

        var data = new google.visualization.arrayToDataTable([
            ['Pekerjaan', 'Jumlah'],
            <?php
            foreach ($chart_responden_job as $row) {
                echo "['" . $row->nama . "'," . $row->jumlah . "],";
            } ?>
        ]);

        var options = {
            title: 'Responden berdasarkan Pekerjaan',
            width: 500,
            height: 300
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_job'));
        chart.draw(data, options);

    }

    function drawRespondenChartByAge() { //Chart Responden berdasarkan Rentang Usia

        var data = new google.visualization.arrayToDataTable([
            ['Rentang Usia', 'Jumlah'],
            <?php
            foreach ($chart_responden_age as $row) {
                echo "['" . $row->umur_group . "'," . $row->umur_count . "],";
            } ?>
        ]);

        var options = {
            title: 'Responden berdasarkan Rentang Usia',
            width: 500,
            height: 300
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_age'));
        chart.draw(data, options);

    }
</script>
<script type="text/javascript">
    // Initialize the echarts instance based on the prepared dom
    var myChart = echarts.init(document.getElementById('main'));

    // Specify the configuration items and data for the chart
    var option = {

        title: {
            text: 'Data Responden',
            subtext: 'berdasarkan Rentang Usia',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            buttom: 10,
            left: 'left'
        },
        grid: {
            right: "20%",
        },
        series: [{
            name: 'Rentang Usia',
            type: 'pie',
            radius: '100',
            center: ['50%', '60%'],
            selectedMode: 'single',
            data: [
                <?php
                foreach ($chart_responden_age as $row) {
                    echo "{name:'" . $row->umur_group . "',value:" . $row->umur_count . "},";
                } ?>
            ],
            emphasis: {
                itemStyle: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };

    // Display the chart using the configuration items and data just specified.
    myChart.setOption(option);
    window.onresize = function() {
        myChart.resize();
    };
</script>
<script type="text/javascript">
    // Initialize the echarts instance based on the prepared dom
    var myChart2 = echarts.init(document.getElementById('main2'));

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

        grid: {
            right: "20%",
        },

        tooltip: {
            trigger: 'item'
        },

        series: [{
                name: 'Jenis Kelamin',
                type: 'pie',
                radius: 80,
                // center: ['25%', '30%'],
                datasetIndex: 1
            },
            {
                name: 'Pendidikan',
                type: 'pie',
                radius: 80,
                // center: ['75%', '30%'],
                datasetIndex: 2
            },
            {
                name: 'Pekerjaan',
                type: 'pie',
                radius: 80,
                // center: ['25%', '75%'],
                datasetIndex: 3
            },
            {
                name: 'Rentang Usia',
                type: 'pie',
                radius: 80,
                // center: ['75%', '75%'],
                datasetIndex: 4
            }
        ],

        media: [{
                query: {
                    minAspectRatio: 1
                },
                option: {
                    series: [{
                            center: ['25%', '30%']
                        },
                        {
                            center: ['75%', '30%']
                        },
                        {
                            center: ['25%', '75%']
                        },
                        {
                            center: ['75%', '75%']
                        }
                    ]
                }
            },
            {
                option: {
                    series: [{
                            center: ['50%', '20%']
                        },
                        {
                            center: ['50%', '40%']
                        },
                        {
                            center: ['50%', '60%']
                        },
                        {
                            center: ['50%', '80%']
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
    myChart2.setOption(option);
    window.onresize = function() {
        myChart2.resize();
    };
</script>