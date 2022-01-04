private
refresh: particle

	| reducedUniverse |
	reducedUniverse := universeState remove: particle.
	universeState := reducedUniverse add: particle