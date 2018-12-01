baselines
baseline: spec

	<baseline>
	
	spec for: #common do: [ 
		spec package: 'ThreeBodySimulation-Playground' with: [ spec requires: 'Aconcagua' ].
		
		spec project: 'Aconcagua' with: [ 
			spec
				repository: 'https://github.com/ba-st/aconcagua';
				path: 'repository' 
			 ]
		]