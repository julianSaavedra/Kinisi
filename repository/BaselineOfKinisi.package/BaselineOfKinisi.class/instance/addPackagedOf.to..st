baselines
addPackagedOf: domain to: spec

	| modelPackage testPackage uiPackage |
	modelPackage := self modelPackageFor: domain.
	spec package: modelPackage with: [ spec requires: self coreModel ].
	modelPackages add: modelPackage.
	testPackage := self testsPackageFor: domain.
	spec package: testPackage with: [ spec requires: modelPackage ].
	uiPackage := self uiPackageFor: domain.
	spec
		package: uiPackage
		with: [ spec requires: (Array with: self coreUI with: modelPackage) ].
	uiPackages add: uiPackage