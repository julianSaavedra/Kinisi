adding
addGroupsTo: spec

	spec group: 'Model' with: self allModelPackages.
	spec group: 'UI' with: self allUIPackages.
	spec group: 'Tests' with: self allTestsPackages.

	spec group: 'Deployment' with: #('Model' 'UI').
	spec group: 'CI' with: #('Deployment' 'Tests').
	spec group: 'Development' with: 'default'