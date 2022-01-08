tests
testDisplayChartShowingPositionOfSingleRedParticleInDimensionXOnlyWithScatterPlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticlePositionChartInterfaceSpec on: MeasureDimension x plottingWith: PlotTypeSelector scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_SingleRedParticle_DimensionXOnly_Scatter'