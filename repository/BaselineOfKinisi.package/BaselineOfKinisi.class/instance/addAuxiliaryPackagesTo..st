adding
addAuxiliaryPackagesTo: spec

	#('Kinisi-Examples' 'Kinisi-Playground') do: [:auxiliaryPackage |
		spec
			package: auxiliaryPackage
			with: [ spec requires: self allModelPackages ]
		]