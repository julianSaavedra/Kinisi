initialization
initializeBasedOn: initialScenario changingWith: desireChange over: targetStepDelta unitl: targetLastStep observingBasedOn: interface

	scenario := initialScenario.
	change := desireChange.
	stepDelta := targetStepDelta.
	lastStep := targetLastStep.
	observationDefinition := interface