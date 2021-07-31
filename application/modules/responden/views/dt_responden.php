<link rel="stylesheet" src="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
<link rel="stylesheet" src="https://cdn.datatables.net/searchpanes/1.3.0/css/searchPanes.dataTables.min.css">
<link rel="stylesheet" src="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css">
<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Usia</th>
                <th>Jenis Kelamin</th>
                <th>Pendidikan</th>
                <th>Pekerjaan</th>
                <th>Satker yg dinilai</th>
                <th>Layanan yg diterima</th>
                <th>Tanggal Survey</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach($responden as $list){
                    echo "<tr>";
                    echo "<td>".$list->umur."</td>";
                    echo "<td>".$list->jk."</td>";
                    echo "<td>".$list->n_pendidikan."</td>";
                    echo "<td>".$list->n_pekerjaan."</td>";
                    echo "<td>".$list->n_satker."</td>";
                    echo "<td>".$list->n_layanan."</td>";
                    echo "<td>".date_format(date_create($list->tgl_survey),'d-m-Y')."</td>";
                    echo "</tr>";
                }
            ?>
        </tbody>
        <tfoot>
            <tr>
                <th>Usia</th>
                <th>Jenis Kelamin</th>
                <th>Pendidikan</th>
                <th>Pekerjaan</th>
                <th>Satker yg dinilai</th>
                <th>Layanan yg diterima</th>
                <th>Tanggal Survey</th>
            </tr>
        </tfoot>
    </table>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/searchpanes/1.3.0/js/dataTables.searchPanes.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>

    <script>
        $(document).ready(function () {
    // Create DataTable
    var table = $('#example').DataTable({
        dom: 'Pfrtip',
    });
 
    // Create the chart with initial data
    var container = $('<div/>').insertBefore(table.table().container());
 
    var chart = Highcharts.chart(container[0], {
        chart: {
            type: 'pie',
        },
        title: {
            text: 'Jumlah Responden e-SKM',
        },
        series: [
            {
                data: chartData1(table),
            },
        ],
    });
 
    // On each draw, update the data in the chart
    table.on('draw', function () {
        chart.series[0].setData(chartData1(table));
        // chart.series[0].setData(chartData2(table));
    });
});
 
function chartData1(table) {
    var counts = {};
 
    // Count the number of entries for each position
    table
        .column(1, { search: 'applied' })
        .data()
        .each(function (val) {
            if (counts[val]) {
                counts[val] += 1;
            } else {
                counts[val] = 1;
            }
        });
 
    // And map it to the format highcharts uses
    return $.map(counts, function (val, key) {
        return {
            name: key,
            y: val,
        };
    });
}

function chartData2(table) {
    var counts = {};
 
    // Count the number of entries for each position
    table
        .column(2, { search: 'applied' })
        .data()
        .each(function (val) {
            if (counts[val]) {
                counts[val] += 1;
            } else {
                counts[val] = 1;
            }
        });
 
    // And map it to the format highcharts uses
    return $.map(counts, function (val, key) {
        return {
            name: key,
            y: val,
        };
    });
}
    </script>