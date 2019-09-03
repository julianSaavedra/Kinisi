specs
defaultSpec

	^SpecColumnLayout composed
		newRow: [:buttons | buttons add: #addButton; add: #removeButton; add: #resetButton] height: 20;
		add: #particleDraftList origin: 0@0 corner: 1@0.2;
		add: #selectedParticleDraft origin: 0@0.2 corner: 1@1;
		yourself