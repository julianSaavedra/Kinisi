private
includesAllAndOnly: particlesCollection

	^particles size = particlesCollection size
		and: [ particles includesAll: particlesCollection ]