accessing
change

	^SimulationStateChange with: [:currentState |
		CollatzConjectureStateChange new finalStateFrom: currentState ]