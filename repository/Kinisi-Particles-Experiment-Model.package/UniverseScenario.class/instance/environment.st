as yet unclassified
environment

	| environmentBuilder |
	environmentBuilder := ChangeEnvironmentBuilder for: self state.
	self particles do: [:particle |
		particle changeSpecifications do: [:component |
			component addTo: environmentBuilder for: particle particleState]].
	gravitationalSpecification addTo: environmentBuilder.
	^environmentBuilder environment