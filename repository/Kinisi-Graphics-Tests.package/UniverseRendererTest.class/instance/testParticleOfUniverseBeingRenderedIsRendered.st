test
testParticleOfUniverseBeingRenderedIsRendered

	| universeDraft particleDraft renderer |

	universeDraft := UniverseScenario new.
	particleDraft := universeDraft newParticleObservation.
	renderer := UniverseRenderer basedOn: universeDraft.

	renderer drawIn: canvas basedOn: universeDraft.

	self
		assert: canvas shapes first model particleName
		equals: particleDraft particleName