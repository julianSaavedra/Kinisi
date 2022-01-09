private
addPlotsTo: chart

	accumulatorsMap valuesDo: [:accumulator |
		accumulator addPlotTo: chart with: observationIndices]