private
elementBasedOn: particle

	| element |
	element := RTElement new.
	element model: particle.
	^element