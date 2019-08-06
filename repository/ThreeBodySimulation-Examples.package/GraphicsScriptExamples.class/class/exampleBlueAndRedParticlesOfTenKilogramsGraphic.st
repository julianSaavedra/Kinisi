examples - grid
exampleBlueAndRedParticlesOfTenKilogramsGraphic

	| view viewSize gridConfiguration universeDraft renderer unitProvider meter blueDraft redDraft |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	unitProvider := UnitProvider soleInstance.
	meter := unitProvider meter.
	gridConfiguration := GridConfiguration
		withColor: Color gray
		size: 50
		andScale: (meter with: 1).
	universeDraft := UniverseObservationDraft new.
	blueDraft := universeDraft newParticleObservationDraft.
	blueDraft
		color: Color blue;
		position: (MeasureVector x: 1 with: meter);
		mass: (unitProvider kilogram with: 10).
	redDraft := universeDraft newParticleObservationDraft.
	redDraft
		color: Color red;
		position: (MeasureVector x: -1 with: meter);
		mass: (UnitProvider soleInstance kilogram with: 10).
		
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.
	renderer drawIn: view basedOn: universeDraft.
	GridRenderer new drawIn: view basedOn: gridConfiguration.
	
	view openInWindowSized: viewSize titled: 'Red and Blue'.	
	view canvas camera focusOnCenter