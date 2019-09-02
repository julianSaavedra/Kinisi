specs
defaultSpec

	^SpecColumnLayout composed
		newRow: [:buttons | buttons add: #addButton; add: #resetButton] height: 20;
		add: #particleDraftList;
		add: #selectedParticleDraft;
		yourself