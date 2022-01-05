baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		self addCorePackagesTo: spec.
		self addPackagedOf: 'Particles' to: spec.
		spec
			package: 'Kinisi-CollatzConjecture-Model'
			with: [ spec requires: #( #package ) ].
		spec
			package: 'Kinisi-CollatzConjecture-Tests'
			with: [ spec requires: #( 'Kinisi-CollatzConjecture-Model' ) ].
		spec package: 'Kinisi-CollatzConjecture-UI' with: [ 
			spec requires:
				#( 'Kinisi-Experiment-UI' 'Kinisi-CollatzConjecture-Model' ) ].
		spec package: 'Kinisi-UI-Menu' with: [ 
			spec requires:
				#( 'Kinisi-Experiment-UI' 'Kinisi-Particles-UI'
				   'Kinisi-CollatzConjecture-UI' ) ].
		spec
			package: 'Kinisi-Examples'
			with: [ spec requires: self projectDepencencies ].
		spec
			package: 'Kinisi-Playground'
			with: [ spec requires: 'Kinisi-Particles-Model' ].
		spec
			group: 'Model'
			with:
			#( #package 'Kinisi-Particles-Model' 'Kinisi-CollatzConjecture-Model' ).
		spec
			group: 'UI'
			with:
			#( 'Kinisi-Experiment-UI' 'Kinisi-Particles-UI'
			   'Kinisi-CollatzConjecture-UI' ).
		spec
			group: 'Tests'
			with: #( 'Kinisi-Experiment-Tests' 'Kinisi-Particles-Tests'
				   'Kinisi-CollatzConjecture-Tests' ).
		spec group: 'Deployment' with: #( 'Model' 'UI' 'Kinisi-UI-Menu' ).
		spec group: 'CI' with: #( 'Deployment' 'Tests' ).
		spec group: 'Development' with: 'default'.
		self addProjectDependenciesTo: spec ]