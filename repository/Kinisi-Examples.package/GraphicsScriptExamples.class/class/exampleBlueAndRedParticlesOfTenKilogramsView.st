examples - universe visualization
exampleBlueAndRedParticlesOfTenKilogramsView

	| universe meter |
	universe := self universeWithBlueAndRedParticlesOfTenKilogramsMovingInOppositeDirections.
	meter := UnitProvider soleInstance meter.
	universe scale: (meter with: 1).
	
	self
		openWindowNamed: 'Red and Blue particles'
		inCanvasDraw: [:canvas |
			| renderer |
			renderer := UniverseRenderer basedOn: universe.
			renderer drawIn: canvas basedOn: universe ]