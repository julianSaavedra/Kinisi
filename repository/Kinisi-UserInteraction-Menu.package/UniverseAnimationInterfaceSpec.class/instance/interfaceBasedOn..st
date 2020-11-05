accessing
interfaceBasedOn: universeScenario

	| renderer |
	renderer := UniverseRenderer basedOn: universeScenario.
	
	^AnimationInterface
		using: renderer
		extent: 1200@700
		startingWith: universeScenario state