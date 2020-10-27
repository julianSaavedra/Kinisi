examples - universe visualization
exampleEarthAndSunView

	| universe |
	universe := self earthAndSunInitialUniverseObservation.
	universe background: Color black.
	universe scale: (UnitProvider soleInstance kilometer with: 25e6).
	
	self
		openWindowNamed: 'Earth and Sun'
		inCanvasDraw: [:canvas |
			| renderer |
			renderer := UniverseRenderer basedOn: universe.
			renderer drawIn: canvas basedOn: universe ]