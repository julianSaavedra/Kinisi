specs
defaultSpec

	^SpecColumnLayout composed
		newRow: [:buttons | buttons add: #addButton; add: #removeButton; add: #removeAllButton] height: 20;
		add: #particleObservationList origin: 0@0 corner: 1@0.2;
		add: #selectedParticleObservation origin: 0@0.2 corner: 1@1;
		yourself