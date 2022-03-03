private - menu construction
buildParticlesMenUsing: builder in: menu

	(builder item: #Particles)
		label: 'Particles';
		target: menu;
		order: 2;
		iconName: #smallObjects;
		with: [
			(builder item: 'Open new lab')
				target: menu;
				selector: #openParticlesLab;
				help: 'Open Lab over Particles domain.';
				order: 1;
				iconName: #workspace;
				withSeparatorAfter.
			(builder item: 'ExamplesParticles')
				label: 'Examples';
				order: 2;
				iconName: #glamorousOpen;
				with: [
					self
						add: self particlesExampleItemDefinitions
						with: #openParticlesLabWith:
						to: menu
						using: builder ]
					]