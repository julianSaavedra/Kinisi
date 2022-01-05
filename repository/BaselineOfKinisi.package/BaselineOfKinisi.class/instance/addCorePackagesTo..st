baselines
addCorePackagesTo: spec

	| modelPackage testsPackage uiPackage |
	modelPackage := self coreModel.
	spec
		package: modelPackage
		with: [ spec requires: self projectDependencies ].
	modelPackages add: modelPackage.
	testsPackage := self coreTests.
	spec
		package: testsPackage
		with: [ spec requires: modelPackage ].
	testsPackages add: testsPackage.
	uiPackage := self coreUI.
	spec
		package: uiPackage
		with: [ spec requires: modelPackage ].
	uiPackages add: uiPackage