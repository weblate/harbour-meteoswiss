import QtQuick 2.0
import Sailfish.Silica 1.0

import "../../qchart/"
import "../../qchart/QChart.js" as Charts


QChart {
    id: rainChart
    property bool scaleOnly: false

    chartAnimated: false
    chartData: rain ? rain : { labels: [], datasets: [{ fillColor: "rgba(0,0,0,0)", strokeColor: "rgba(0,0,0,0)", pointColor: "rgba(0,0,0,0)", data: [] }]}
    chartType: Charts.ChartType.BAR
    chartOptions: ({
        scaleFontSize: Theme.fontSizeExtraSmall,
        scaleFontFamily: 'Sail Sans Pro',
        scaleFontColor: Theme.secondaryColor,
        scaleLineColor: Theme.secondaryColor,
        scaleShowLabels: true,
        scaleStartValue: 0.0,
        scaleOverlay: scaleOnly,
        currentHourLine: true,

        fillColor: ["rgba(151,187,205,0.5)", "rgba(151,187,205,0)", "rgba(151,187,205,0)"],
        strokeColor: ["rgba(151,187,205,1)", "rgba(151,187,205,0.6)", "rgba(151,187,205,0.6)"],
    })
}
