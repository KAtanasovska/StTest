$(function() {
    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: 'Jan',
            a: 100,
            b: 90
        }, {
            y: 'Feb',
            a: 75,
            b: 65
        }, {
            y: 'Mar',
            a: 50,
            b: 40
        }, {
            y: 'Apr',
            a: 75,
            b: 65
        }, {
            y: 'May',
            a: 50,
            b: 40
        }, {
            y: 'Jun',
            a: 75,
            b: 65
        }, {
            y: 'Jul',
            a: 100,
            b: 90
        }, {
            y: 'Aug',
            a: 60,
            b: 90
        }, {
            y: 'Sep',
            a: 40,
            b: 90
        }, {
            y: 'Oct',
            a: 70,
            b: 50
        }, {
            y: 'Nov',
            a: 100,
            b: 90
        }, {
            y: 'Dec',
            a: 80,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['On Leave', 'On Staff'],
        hideHover: 'auto',
        resize: true
    });
    
});
