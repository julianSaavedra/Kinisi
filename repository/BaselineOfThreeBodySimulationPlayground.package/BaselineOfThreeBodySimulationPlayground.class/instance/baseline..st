baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'ThreeBodySimulation-Physics-Model' with: [ spec requires: 'Aconcagua' ].
		spec package: 'ThreeBodySimulation-Physics-Test' with: [ spec requires: 'ThreeBodySimulation-Physics-Model' ].

		spec package: 'ThreeBodySimulation-Simulation-Model'.
		spec package: 'ThreeBodySimulation-Simulation-Test' with: [ spec requires: 'Aconcagua' ].		
		
		spec package: 'ThreeBodySimulation-Playground' with: [ spec requires: 'Aconcagua' ].		
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Development') ]
		]
