accessing
interfaceProcessorBasedOn: collatzConjectureScenario

	| renderer |
	renderer := CollatzConjectureStateRenderer basedOn: collatzConjectureScenario.
	^StateRenderingProcessor with: renderer basedOn: collatzConjectureScenario