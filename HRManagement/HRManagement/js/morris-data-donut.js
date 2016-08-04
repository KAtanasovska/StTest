$(function() {

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Remaining Paid Leave",
            value: 12
        }, {
            label: "Used Paid leave",
            value: 10
        }],
        resize: true
    });
});
