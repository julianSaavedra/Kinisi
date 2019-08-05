examples - grid - animation
exampleEarthAndSunAnimationWithBuffer

	| view viewSize animation draft day simulation timeDelta duration buffer gridConfiguration |

	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	view canvas camera focusOnCenter.
	gridConfiguration := self exampleEarthAndSunGridConfiguration.
	draft := self earthAndSunInitialUniverseDraft.

	day := UnitProvider soleInstance day.
	timeDelta := day with: 1.
	duration := day with: 365.
	buffer := SimulationStepResultBuffer real.
	simulation := Simulation
		startingWith: ScriptExamples earthAndSunInitialObservableUniverseState
		changingBy: [:stepDuration :currentState |
			(UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: timeDelta
		during: duration
		informingStepsTo: buffer .

	simulation run.
	
	animation := RTActiveAnimation new.
	animation intervalInMilliseconds: 40.
	animation
		blockToExecute: [
			"self updateDraft: draft basedOn: buffer next value."
			self drawIn: view basedOnDraft: buffer next value with: gridConfiguration.
		].
	"Starts animation"
	animation inView: view