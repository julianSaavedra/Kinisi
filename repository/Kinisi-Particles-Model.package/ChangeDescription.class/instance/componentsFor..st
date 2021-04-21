private
componentsFor: particle

	| components |
	components := componentsPerParticle
		at: particle particleName
		ifAbsent: [ OrderedCollection new ].
	gravitationalComponent ifNotNil: [ components add: gravitationalComponent ].
	^components