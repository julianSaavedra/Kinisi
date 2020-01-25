tests
testWithComponentsDoProtocolIteratesOverBothParticleDraftInTheUniverseDraft

	| universeDraft particleDrafts componentsIteratedOver |
	universeDraft := UniverseObservationDraft new.
	particleDrafts := Array
		with: universeDraft newParticleObservationDraft;
		with: universeDraft newParticleObservationDraft.
	componentsIteratedOver := OrderedCollection new.
	
	universeDraft withComponentsDo: [:particleDraft |
		componentsIteratedOver add: particleDraft ].
	
	self assert: (componentsIteratedOver includesAll: particleDrafts).
	self assert: componentsIteratedOver size equals: 2
