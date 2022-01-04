baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'Kinisi-Experiment-Model' with: [ spec requires: #('Aconcagua' 'Roassal3') ].
		spec package: 'Kinisi-Experiment-Tests' with: [ spec requires: #('Kinisi-Experiment-Model') ].
		spec package: 'Kinisi-Experiment-UI' with: [ spec requires: #('Kinisi-Experiment-Model') ].

		spec package: 'Kinisi-Particles-Model' with: [ spec requires: 'Kinisi-Experiment-Model' ].
		spec package: 'Kinisi-Particles-Tests' with: [ spec requires: 'Kinisi-Particles-Model' ].
		spec package: 'Kinisi-Particles-UI' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-Particles-Model') ].
		
		spec package: 'Kinisi-CollatzConjecture-Model' with: [ spec requires: #('Kinisi-Experiment-Model') ].
		spec package: 'Kinisi-CollatzConjecture-Tests' with: [ spec requires: #('Kinisi-CollatzConjecture-Model') ].
		spec package: 'Kinisi-CollatzConjecture-UI' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-CollatzConjecture-Model') ].
			
		spec package: 'Kinisi-UI-Menu' with: [ spec requires: #('Kinisi-Experiment-UI' 'Kinisi-Particles-UI' 'Kinisi-CollatzConjecture-UI') ].
		
		spec package: 'Kinisi-Examples' with: [ spec requires: #('Aconcagua' 'Roassal3') ].
		spec package: 'Kinisi-Playground' with: [ spec requires: 'Kinisi-Particles-Model' ].
		
		spec group: 'Model' with: #('Kinisi-Experiment-Model' 'Kinisi-Particles-Model' 'Kinisi-CollatzConjecture-Model').
		spec group: 'UI' with: #('Kinisi-Experiment-UI' 'Kinisi-Particles-UI' 'Kinisi-CollatzConjecture-UI').
		spec group: 'Tests' with: #('Kinisi-Experiment-Tests' 'Kinisi-Particles-Tests' 'Kinisi-CollatzConjecture-Tests').
		
		spec group: 'Deployment' with: #('Model' 'UI' 'Kinisi-UI-Menu').
		spec group: 'CI' with: #('Deployment' 'Tests').
		spec group: 'Development' with: 'default'.
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Deployment') ].

		spec baseline: 'Roassal3' with: [
			spec repository: 'github://ObjectProfile/Roassal3/src' ]	
		]
