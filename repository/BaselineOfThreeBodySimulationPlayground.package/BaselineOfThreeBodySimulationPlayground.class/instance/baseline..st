baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'ThreeBodySimulation-Playground' with: [ spec requires: 'Aconcagua' ].
		
		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'https://github.com/ba-st/aconcagua/repository';
				loads: #('Deployment' 'Development') ]
		]