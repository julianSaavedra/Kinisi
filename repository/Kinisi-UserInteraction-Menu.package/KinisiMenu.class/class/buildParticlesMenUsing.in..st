menu cosntruction - private
buildParticlesMenUsing: builder in: menu

	(builder item: 'Open new Particles Lab')
		  target: menu;
		  selector: #openParticlesLab;
		  help: 'Open Lab over Particles domain.';
		  order: 2;
		  iconName: #workspace