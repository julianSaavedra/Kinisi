result
expectedSteps

	| oneSecond constantVelocity initialState steps currentParticleState initialParticleState currentUniverseState |
	oneSecond := resource oneSecond.
	initialParticleState := self initialParticleState.
	constantVelocity := initialParticleState velocity.
	initialState := ObservableUniverseState with: initialParticleState.
	steps := OrderedCollection with: (SimulationStepResult at: 0 * oneSecond with: initialState).
	currentParticleState := initialParticleState.
	1 to: 10 do: [ :secondsAmount | 
		currentParticleState := currentParticleState
			position: currentParticleState position + (constantVelocity * oneSecond).
		currentUniverseState := ObservableUniverseState
			with: currentParticleState.
		steps
			add:
				(SimulationStepResult
					at: secondsAmount * oneSecond
					with: currentUniverseState) ].
	^ steps