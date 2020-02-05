tests
testWithComponentsDoProtocolIteratesOverBothParticleDraftInTheUniverseDraft

	| universeDraft particleDrafts componentsIteratedOver |
	universeDraft := UniverseObservationDraft new.
	particleDrafts := Array
		with: universeDraft newParticleObservation;
		with: universeDraft newParticleObservation.
	componentsIteratedOver := OrderedCollection new.
	
	universeDraft withComponentsDo: [:particleDraft |
		componentsIteratedOver add: particleDraft ].
	
	self assert: (componentsIteratedOver includesAll: particleDrafts).
	self assert: componentsIteratedOver size equals: 2
