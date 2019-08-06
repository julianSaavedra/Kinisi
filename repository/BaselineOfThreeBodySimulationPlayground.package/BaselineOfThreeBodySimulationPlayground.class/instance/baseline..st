baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'ThreeBodySimulation-Physics-Model' with: [ spec requires: 'Aconcagua' ].
		spec package: 'ThreeBodySimulation-Physics-Tests' with: [ spec requires: #('ThreeBodySimulation-Physics-Model' 'ThreeBodySimulation-General') ].
		
		spec package: 'ThreeBodySimulation-General' with: [ spec requires: 'ThreeBodySimulation-Physics-Model' ].
		spec package: 'ThreeBodySimulation-General-Tests' with: [ spec requires: 'ThreeBodySimulation-General' ].

		spec package: 'ThreeBodySimulation-Simulation-Model'.
		spec package: 'ThreeBodySimulation-Simulation-Tests' with: [ spec requires: 'Aconcagua' ].		
		
		spec package: 'ThreeBodySimulation-Playground' with: [ spec requires: 'ThreeBodySimulation-Physics-Model' ].
		spec package: 'ThreeBodySimulation-PlaygroundGraphic' with: [ spec requires: #('Aconcagua' 'Roassal2')].		
		spec package: 'ThreeBodySimulation-Examples' with: [ spec requires: #('Aconcagua' 'Roassal2') ].
		
		spec package: 'ThreeBodySimulation-Graphics-Model' with: [ spec requires: 'Roassal2' ].
		spec package: 'ThreeBodySimulation-Graphics-Tests' with: [ spec requires: #('ThreeBodySimulation-Graphics-Model' 'Roassal2') ].	
		
		spec package: 'ThreeBodySimulation-UserInteraction-Model'.
		spec package: 'ThreeBodySimulation-UserInteraction-Tests' with: [ spec requires: #('ThreeBodySimulation-Physics-Model' 'ThreeBodySimulation-General') ].		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Development') ].

		spec baseline: 'Roassal2' with: [
			spec
				repository: 'github://ObjectProfile/Roassal2/src' ].			
			
		]
