accessing
interfaceProcessorBasedOn: universeScenario

	| renderer |
	renderer := UniverseRenderer basedOn: universeScenario.
	^StateRenderingProcessor with: renderer basedOn: universeScenario