class HighchartController < ApplicationController
def index
@h= LazyHighCharts::HighChart.new('graph') do |f|
  f.title(text: "Post vs comment")
  f.xAxis(categories: ["Kishan", "Gourav", "Roopa", "Rohit", "Kishore"])
  f.series(name: "comment in Hundred", yAxis: 0, data: [14, 50, 85, 39, 56])
  f.series(name: "post in Hundred", yAxis: 1, data: [31, 27, 40, 81, 65])

  f.yAxis [
    {title: {text: "comment in Hundred", margin: 10} },
    {title: {text: "post in Hundred"}, opposite: true},
   ]

  f.legend(align: 'right', verticalAlign: 'top', y: 75, x: 10, layout: 'vertical')
  f.chart({defaultSeriesType: "column"})
end
end
end