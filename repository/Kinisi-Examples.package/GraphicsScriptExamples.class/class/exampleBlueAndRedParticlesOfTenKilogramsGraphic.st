examples - grid
exampleBlueAndRedParticlesOfTenKilogramsGraphic

	| view viewSize gridConfiguration universeDraft renderer unitProvider meter |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	unitProvider := UnitProvider soleInstance.
	meter := unitProvider meter.
	gridConfiguration := GridConfiguration
		withColor: Color gray
		size: 50
		andDistance: (meter with: 1).
		
	universeDraft := self universeDraftBlueAndRedParticlesOfTenKilogramsMovingInOppositeDirections.
		
	renderer := UniverseRenderer basedOn: universeDraft with: gridConfiguration.
	renderer drawIn: view basedOn: universeDraft.
	GridRenderer new drawIn: view basedOn: gridConfiguration.
	
	view openInWindowSized: viewSize titled: 'Red and Blue'.	
	view canvas camera focusOnCenter