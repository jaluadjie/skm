<html>
    <head>
        <script src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript"> //Menampilkan Chart Responden berdasarkan JK
            $(document).ready(function() {
                $.ajax({
                    url : "<?php echo site_url('responden/google_chart/jk')?>",
                    dataType : "JSON",
                    before: function(){
                        document.getElementById('responden_jk').innerHTML('proses');
                    },
                    success : function(result) {
                        google.charts.load('current', {
                            'packages' : [ 'corechart' ]
                        });
                        google.charts.setOnLoadCallback(function() {
                            drawChart(result);
                        });
                    }
                });

                function drawChart(result) {

                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Jenis Kelamin');
                    data.addColumn('number', 'Jumlah');
                    var dataArray = [];
                    $.each(result, function(i, obj) {
                        dataArray.push([ obj.nama, parseInt(obj.jumlah) ]);
                    });

                    data.addRows(dataArray);

                    var options = {
                        // title : 'Responden berdasarkan Jenis Kelamin',
                        width : '100%',
                        height : '100%',
                        // legend: 'none',
                        pieSliceText: 'label',
                        is3D : true,
                        backgroundColor :'transparent'
                    };
                    var piechart = new google.visualization.PieChart(document.getElementById('responden_jk'));
                    piechart.draw(data, options);
                }
            });
        </script>
        <script type="text/javascript"> // Menampilkan Chart Responden berdasarkan Pendidikan
            $(document).ready(function() {
                $.ajax({
                    url : "<?php echo site_url('responden/google_chart/edu')?>",
                    dataType : "JSON",
                    success : function(result) {
                        google.charts.load('current', {
                            'packages' : [ 'corechart' ]
                        });
                        google.charts.setOnLoadCallback(function() {
                            drawChart(result);
                        });
                    }
                });

                function drawChart(result) {

                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Pendidikan');
                    data.addColumn('number', 'Jumlah');
                    var dataArray = [];
                    $.each(result, function(i, obj) {
                        dataArray.push([ obj.nama, parseInt(obj.jumlah) ]);
                    });

                    data.addRows(dataArray);

                    var piechart_options = {
                        // title : 'Responden berdasarkan Pendidikan',
                        width : '100%',
                        height : '100%',
                        // legend: 'none',
                        pieSliceText: 'label',
                        is3D : true,
                        backgroundColor :'transparent'
                    };
                    var piechart = new google.visualization.PieChart(document.getElementById('responden_edu'));
                    piechart.draw(data, piechart_options);
                }
            });
        </script>
        <script type="text/javascript"> // Menampilkan Chart Responden berdasarkan Pekerjaan
            $(document).ready(function() {
                $.ajax({
                    url : "<?php echo site_url('responden/google_chart/job')?>",
                    dataType : "JSON",
                    success : function(result) {
                        google.charts.load('current', {
                            'packages' : [ 'corechart' ]
                        });
                        google.charts.setOnLoadCallback(function() {
                            drawChart(result);
                        });
                    }
                });

                function drawChart(result) {

                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Pekerjaan');
                    data.addColumn('number', 'Jumlah');
                    var dataArray = [];
                    $.each(result, function(i, obj) {
                        dataArray.push([ obj.nama, parseInt(obj.jumlah) ]);
                    });

                    data.addRows(dataArray);

                    var piechart_options = {
                        // title : 'Responden berdasarkan Pekerjaan',
                        width : '100%',
                        height : '100%',
                        // legend: 'none',
                        pieSliceText: 'label',
                        is3D : true,
                        backgroundColor :'transparent'
                    };
                    var piechart = new google.visualization.PieChart(document.getElementById('responden_job'));
                    piechart.draw(data, piechart_options);
                }
            });
        </script>
    </head>
<body>
<!-- <div class="col-lg-10"> -->

<div class="row">
    <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="card card-stats">
            <div class="card-header card-header-icon card-header-warning">
                <div class="card-icon">
                    <i class="material-icons">pie_chart</i>
                </div>
                <p class="card-category">Responden berdasarkan Jenis Kelamin</p>
                <h3 class="card-title"></h3>
            </div>
            <div class="card-body">
                <div id="responden_jk"></div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="card card-stats">
            <div class="card-header card-header-icon card-header-primary">
                <div class="card-icon">
                    <i class="material-icons">pie_chart</i>
                </div>
                <p class="card-category">Responden berdasarkan Pendidikan</p>
                <h3 class="card-title"></h3>
            </div>
            <div class="card-body">
                <div id="responden_edu"></div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="card card-stats">
            <div class="card-header card-header-icon card-header-danger">
                <div class="card-icon">
                    <i class="material-icons">pie_chart</i>
                </div>
                <p class="card-category">Responden berdasarkan Pekerjaan</p>
                <h3 class="card-title"></h3>
            </div>
            <div class="card-body">
                <div id="responden_job"></div>
            </div>
        </div>
    </div>
</div>
<!-- </div> -->
<script>
    // $(document).ready(function(){
    //     $(window).resize(function(){
    //     drawChart();
    // });
// });
</script>
</body>
</html>

