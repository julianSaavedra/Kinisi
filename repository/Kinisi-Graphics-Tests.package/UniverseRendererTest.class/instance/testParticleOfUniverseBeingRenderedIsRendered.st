test
testParticleOfUniverseBeingRenderedIsRendered

	| universeDraft particleDraft renderer |

	universeDraft := UniverseObservation new.
	particleDraft := universeDraft newParticleObservation.
	renderer := UniverseRenderer basedOn: universeDraft.

	renderer drawIn: view basedOn: universeDraft.

	self
		assert: view elements first model particleName
		equals: particleDraft particleName