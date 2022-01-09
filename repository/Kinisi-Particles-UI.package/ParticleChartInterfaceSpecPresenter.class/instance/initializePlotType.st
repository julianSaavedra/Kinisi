initialization
initializePlotType

	plotType := self
		            newDropListWith: self plotTypeOptions
		            using: [ interfaceSpec plotType ]
		            and: [:newPlotType | interfaceSpec plotType: newPlotType ]