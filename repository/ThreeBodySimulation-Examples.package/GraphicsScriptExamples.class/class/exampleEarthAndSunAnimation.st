examples - grid - animation
exampleEarthAndSunAnimation

	| view viewSize animation draft observableUniverseStates |

	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	view canvas camera focusOnCenter.
	
	
	draft := self earthAndSunInitialUniverseDraft.
	observableUniverseStates := OrderedCollection new.
	ScriptExamples exampleEarthAndSunSimulation
		withTimeAndStateDo: [:time :observableUniverseState |
			observableUniverseStates add: observableUniverseState ].

	animation := RTActiveAnimation new.
	animation intervalInMilliseconds: 40.
	animation
		blockToExecute: [
			observableUniverseStates ifNotEmpty: [
					self updateDraft: draft basedOn: observableUniverseStates first.
					self drawIn: view basedOnDraft: draft.
					observableUniverseStates := observableUniverseStates allButFirst ] ].
	"Starts animation"
	animation inView: view