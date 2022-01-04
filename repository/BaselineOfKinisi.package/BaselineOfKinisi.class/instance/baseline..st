baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'Kinisi-General-Model'.
		spec package: 'Kinisi-General-Tests' with: [ spec requires: 'Kinisi-General-Model' ].
		
		spec package: 'Kinisi-Experiment-Model' with: [ spec requires: #('Kinisi-General-Model' 'Aconcagua' 'Roassal3') ].
		spec package: 'Kinisi-Experiment-Tests' with: [ spec requires: #('Kinisi-Experiment-Model') ].
		spec package: 'Kinisi-Experiment-UI' with: [ spec requires: #('Kinisi-Experiment-Model') ].
			
		spec package: 'Kinisi-Particles-Model' with: [ spec requires: 'Kinisi-Experiment-Model' ].
		spec package: 'Kinisi-Particles-Tests' with: [ spec requires: 'Kinisi-Particles-Model' ].
		spec package: 'Kinisi-Particles-UI' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-Particles-Model') ].
		
		spec package: 'Kinisi-CollatzConjecture-Model' with: [ spec requires: #('Kinisi-Experiment-Model') ].
		spec package: 'Kinisi-CollatzConjecture-Tests' with: [ spec requires: #('Kinisi-CollatzConjecture-Model') ].
		spec package: 'Kinisi-CollatzConjecture-UI' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-CollatzConjecture-Model') ].

		spec package: 'Kinisi-UserInteraction-Menu' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-Particles-UI' 'Kinisi-CollatzConjecture-UI') ].
		
		spec package: 'Kinisi-Examples' with: [ spec requires: #('Aconcagua' 'Roassal3') ].
		spec package: 'Kinisi-Playground' with: [ spec requires: 'Kinisi-Particles-Model' ].
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Development') ].

		spec baseline: 'Roassal3' with: [
			spec repository: 'github://ObjectProfile/Roassal3/src' ]	
		]
