baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'Kinisi-General-Model'.
		spec package: 'Kinisi-General-Tests' with: [ spec requires: 'Kinisi-General-Model' ].
		
		spec package: 'Kinisi-Experiment-Model'.
		spec package: 'Kinisi-Experiment-Tests' with: [ spec requires: #('Kinisi-Experiment-Model' 'Aconcagua') ].
		spec package: 'Kinisi-Experiment-UI' with: [ spec requires: #('Kinisi-Experiment-Model' 'Roassal3') ].
			
		spec package: 'Kinisi-Particles-Model' with: [ spec requires: 'Aconcagua' ].
		spec package: 'Kinisi-Particles-Tests' with: [ spec requires: 'Kinisi-Particles-Model' ].
		spec package: 'Kinisi-Particles-Experiment-Model' with: [ spec requires: 'Kinisi-Experiment-Model' ].
		spec package: 'Kinisi-Particles-Experiment-Tests' with: [ spec requires: 'Kinisi-Particles-Experiment-Model' ].
		spec package: 'Kinisi-Particles-Experiment-UI' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-Particles-Experiment-Model') ].
		spec package: 'Kinisi-Particles-Graphics-Model' with: [ spec requires: #('Kinisi-Particles-Model' 'Roassal3') ].
		spec package: 'Kinisi-Particles-Graphics-Tests' with: [ spec requires: 'Kinisi-Particles-Graphics-Model' ].
		
		spec package: 'Kinisi-CollatzConjecture-Model' with: [ spec requires: #('Kinisi-Experiment-Model' 'Roassal3') ].
		spec package: 'Kinisi-CollatzConjecture-Tests' with: [ spec requires: #('Kinisi-CollatzConjecture-Model') ].
		spec package: 'Kinisi-CollatzConjecture-UI' with: [ spec requires: #('Kinisi-CollatzConjecture-Model' 'Kinisi-Experiment-UI') ].

		spec package: 'Kinisi-UserInteraction-Menu' with: [ spec requires: 'Kinisi-Experiment-UI' ].
		
		spec package: 'Kinisi-Examples' with: [ spec requires: #('Aconcagua' 'Roassal3') ].
		spec package: 'Kinisi-Playground' with: [ spec requires: 'Kinisi-Particles-Model' ].
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Development') ].

		spec baseline: 'Roassal3' with: [
			spec repository: 'github://ObjectProfile/Roassal3/src' ]	
		]
