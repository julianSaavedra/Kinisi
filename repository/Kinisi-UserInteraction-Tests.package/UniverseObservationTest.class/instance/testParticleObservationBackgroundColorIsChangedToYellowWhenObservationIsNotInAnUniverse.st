test - particle observation
testParticleObservationBackgroundColorIsChangedToYellowWhenObservationIsNotInAnUniverse

	| particleObservation yellow |
	particleObservation := self particleAObservation.
	yellow := Color yellow.
	self deny: particleObservation background equals: yellow.

	particleObservation background: yellow.


	self assert: particleObservation background equals: yellow