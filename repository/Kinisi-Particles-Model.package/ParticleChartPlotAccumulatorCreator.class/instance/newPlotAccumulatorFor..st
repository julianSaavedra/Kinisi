creation
newPlotAccumulatorFor: particle

	| plot |
	plot := self newPlot.
	plot color: particle color.
	^ParticleChartPlotAccumulator with: plot