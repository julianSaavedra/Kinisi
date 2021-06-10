accessing
interfaceBasedOn: collatzConjectureScenario

	| renderer processor |
	renderer := CollatzConjectureStateRenderer basedOn: collatzConjectureScenario.
	processor := StateRenderingProcessor with: renderer basedOn: collatzConjectureScenario.		
	^ObservationInterface using: processor