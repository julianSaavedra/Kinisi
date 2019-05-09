baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'ThreeBodySimulation-Physics-Model' with: [ spec requires: 'Aconcagua' ].
		spec package: 'ThreeBodySimulation-Physics-Tests' with: [ spec requires: #('ThreeBodySimulation-Physics-Model' 'ThreeBodySimulation-General') ].
		
		spec package: 'ThreeBodySimulation-General' with: [ spec requires: 'ThreeBodySimulation-Physics-Model' ].
		spec package: 'ThreeBodySimulation-General-Tests' with: [ spec requires: 'ThreeBodySimulation-Physics-Model' ].

		spec package: 'ThreeBodySimulation-Simulation-Model'.
		spec package: 'ThreeBodySimulation-Simulation-Tests' with: [ spec requires: 'Aconcagua' ].		
		
		spec package: 'ThreeBodySimulation-Playground' with: [ spec requires: #('Aconcagua' 'Roassal') ].		
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Development') ].

		spec baseline: 'Roassal' with: [
			spec
				repository: 'gitlocal:///Users/alexandrebergel/Dropbox/GitRepos/Roassal2' ].			
			
		]
