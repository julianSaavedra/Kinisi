tests
testDisplayChartShowingPositionOfSingleRedParticleInDimensionYOnlyWithLinePlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticlePositionChartInterfaceSpec on: MeasureDimension y plottingWith: PlotTypeSelector line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_SingleRedParticle_DimensionYOnly_Line'