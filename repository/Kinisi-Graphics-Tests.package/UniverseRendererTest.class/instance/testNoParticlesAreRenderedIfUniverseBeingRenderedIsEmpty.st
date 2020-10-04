test
testNoParticlesAreRenderedIfUniverseBeingRenderedIsEmpty

	| universe renderer |
	universe := UniverseScenario new.
	renderer := UniverseRenderer basedOn: universe.

	self assert: universe particles isEmpty.
	renderer drawIn: canvas basedOn: universe.

	self assert: canvas shapes isEmpty