connecting
addPlotsTo: chart

	plotColorMap keysAndValuesDo: [:particleName :basicParticlePlot |
		| plot |
		plot := basicParticlePlot copy.
		plot x: observationIndices y: (observationStatesMap at: particleName).
		chart addPlot: plot
		]