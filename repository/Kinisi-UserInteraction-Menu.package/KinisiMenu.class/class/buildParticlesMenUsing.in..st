menu cosntruction - private
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
					| exampleSource |
					exampleSource := ParticlesWorkbenchExampleSettingSource new.
					(builder item: #example1)
						label: 'Projectile';
						target: menu;
						iconName: #menuPin;
						selector: #openParticlesLabWith:;
						arguments: {exampleSource projectile}
						]
					]