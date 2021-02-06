configuring
state: targetState

	^self
		newScenarioWith: (CollatzConjectureState with: targetState)
		and: visualDepiction