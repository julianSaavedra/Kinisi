baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'ThreeBodySimulation-Playground' with: [ spec requires: 'Aconcagua' ].
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/aconcagua:v6.0.0/repository';
				loads: #('Deployment' 'Development') ]
		]
