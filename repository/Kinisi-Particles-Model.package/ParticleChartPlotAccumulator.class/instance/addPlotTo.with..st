API
addPlotTo: chart with: xValues
 
	| plot |
	plot := basePlot copy.
	plot x: xValues y: accumulatedValues.
	chart addPlot: plot