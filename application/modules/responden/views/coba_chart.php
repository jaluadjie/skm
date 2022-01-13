<html lang="en">
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
    <h4>Coba Chat Js</h4>
    <div>
        <canvas id="myChart"></canvas>
    </div>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: "<?php echo site_url('responden/google_chart/jk')?>",
                method: "GET",
                dataType: 'json',
                success: function(response) {
                    //console.log(response);
                    var label = [];
                    var value = [];
                    response.forEach(function (element) {
                        label.push(element.nama)
                        value.push(element.jumlah)
                    })
                    // for (var i in response) {
                    //     label.push(response[i].nama);
                    //     value.push(response[i].jumlah);
                    // }
                    console.log(label, value)
                    var ctx = document.getElementById('myChart').getContext('2d');
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
                        options: {}
                    });
                }
            });
        });
    </script>
</body>
</html>