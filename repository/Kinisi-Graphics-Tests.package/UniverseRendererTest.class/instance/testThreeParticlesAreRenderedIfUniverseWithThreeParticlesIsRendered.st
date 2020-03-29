test
testThreeParticlesAreRenderedIfUniverseWithThreeParticlesIsRendered

	| universeDraft renderer |

	universeDraft := UniverseObservation new.
	universeDraft
		newParticleObservation;
		newParticleObservation;
		newParticleObservation.
	self assert: universeDraft particles size equals: 3.
	renderer := UniverseRenderer basedOn: universeDraft.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements size equals: 3