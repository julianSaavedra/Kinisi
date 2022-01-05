baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		self addCorePackagesTo: spec.
		self experimentSpecificDomains do: [ :domain | 
			self addPackagedOf: domain to: spec ].
		self addMenuPackageTo: spec.
		self addAuxiliaryPackagesTo: spec.
		self addGroupsTo: spec.
		self addProjectDependenciesTo: spec ]