test
testNoParticlesAreRenderedIfUniverseBeingRenderedIsEmpty

	| universe renderer |
	universe := UniverseObservation new.
	renderer := UniverseRenderer basedOn: universe.

	self assert: universe particles isEmpty.
	renderer drawIn: view basedOn: universe.

	self assert: view elements isEmpty