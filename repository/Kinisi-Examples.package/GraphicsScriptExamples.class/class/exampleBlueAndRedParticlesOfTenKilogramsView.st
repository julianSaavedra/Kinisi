examples - universe visualization
exampleBlueAndRedParticlesOfTenKilogramsView

	| view viewSize gridConfiguration universeDraft renderer unitProvider meter |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	unitProvider := UnitProvider soleInstance.
	meter := unitProvider meter.	
	universeDraft := self universeWithBlueAndRedParticlesOfTenKilogramsMovingInOppositeDirections.
	universeDraft scale: (meter with: 1).
		
	renderer := UniverseRenderer basedOn: universeDraft.
	renderer drawIn: view basedOn: universeDraft.
	
	view openInWindowSized: viewSize titled: 'Red and Blue'.	
	view canvas camera focusOnCenter