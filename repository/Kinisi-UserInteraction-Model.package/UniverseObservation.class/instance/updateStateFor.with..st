private
updateStateFor: particle with: updateAction

	| currentState newState particleColor |
	currentState := self stateFor: particle.
	newState := updateAction value: currentState.
	universeState := self newUniverseStateReplacing: currentState with: newState.
	particleColor := colorMapping at: currentState particleName.
	colorMapping at: newState particleName put: particleColor