<html lang="en">
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.0/chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
    <h4>Grafik Perkembangan Jumlah Perda & Pergub Pertahun</h4>
    <div>
        <canvas id="jk"></canvas>
    </div>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: "<?php echo site_url('responden/google_chart/jk')?>",
                method: "GET",
                success: function(data) {
                    console.log(data);
                    var label = [];
                    var value = [];
                    for (var i in data) {
                        label.push(data[i].nama);
                        value.push(data[i].jumlah);
                    }
                    var ctx = document.getElementById('jk').getContext('2d');
                    var chart = new Chart(ctx, {
                        type: 'pie',
                        data: {
                            labels: label,
                            datasets: [{
                                label: 'Responden berdasarkan JK',
                                backgroundColor: ['rgb(26, 214, 13)',
                                                'rgb(235, 52, 110)'],
                                borderColor: 'rgb(255, 255, 255)',
                                data: value
                            }]
                        },
                        options: {
                            //konfigurasi tooltip
                            tooltips: {
                                callbacks: {
                                    label: function(tooltipItem, data) {
                                        var dataset = data.datasets[tooltipItem.datasetIndex];
                                        var labels = data.labels[tooltipItem.index];
                                        var currentValue = dataset.data[tooltipItem.index];
                                        // return labels+": "+currentValue+" %";
                                    }
                                }
                            }
                        }
                    });
                }
            });
        });
    </script>
</body>
</html>