baselines
addAconcaguaTo: spec

	spec baseline: self aconcagua with: [ 
		spec
			repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
			loads: #( 'Deployment' ) ]