accessing
interfaceBasedOn: collatzConjectureScenario

	| renderer |
	renderer := CollatzConjectureStateRenderer basedOn: collatzConjectureScenario.
	^AnimationInterface
		using: renderer
		extent: 300@300
		startingWith: collatzConjectureScenario state