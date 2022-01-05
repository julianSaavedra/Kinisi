initialization
initializePresenters

	particlesTable := self newTable.
	particlesTable
		addColumn: (SpStringTableColumn title: 'Particle' evaluated: #particleName);
		addColumn:
			((SpCheckBoxTableColumn title: 'Produces Field?' evaluated: [:particle | workbench scenario gravitySpecification isFieldCausedBy: particle ])
				onActivation: [:particle |
					| currentParticles |
					currentParticles := workbench scenario gravitySpecification fieldCausingParticles.
					workbench addGravitationalFieldCausedByAll: (currentParticles copyWith: particle) ];
				onDeactivation: [:particle |
					| currentParticles |
					currentParticles := workbench scenario gravitySpecification fieldCausingParticles.
					workbench addGravitationalFieldCausedByAll: (currentParticles copyWithout: particle)];
				yourself);
		items: workbench scenario particles;
		beResizable