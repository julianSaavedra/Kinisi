adding
addCorePackagesTo: spec

	| modelPackage |
	modelPackage := self coreModel.
	spec
		package: modelPackage
		with: [ spec requires: self projectDependencies ].
	spec package: self coreTests with: [ spec requires: modelPackage ].
	spec package: self coreUI with: [ spec requires: modelPackage ]