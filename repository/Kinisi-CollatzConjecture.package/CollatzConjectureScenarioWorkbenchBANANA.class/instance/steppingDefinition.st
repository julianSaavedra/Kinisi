accessing
steppingDefinition

	^SteppingDefinition
		untilStateSatifies: [ :state | state = (CollatzConjectureState with: 1) ]