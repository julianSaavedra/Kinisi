private
componentsFor: particle

	| components |
	components := componentsPerParticle
		at: particle particleName
		ifAbsent: [ OrderedCollection new ].
	components add: gravitationalComponent.
	^components