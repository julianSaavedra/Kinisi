examples - grid - animation
exampleEarthAndSunAnimation

	| view viewSize animation observableUniverseStates descriptions |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	view canvas camera focusOnCenter.
	observableUniverseStates := OrderedCollection new.
		
	ScriptExamples exampleEarthAndSunSimulation withTimeAndStateDo:[:time :observableUniverseState |
		observableUniverseStates add: observableUniverseState].
			
	"observableUniverseStates withTimeAndStateDo:[:time :observableUniverseState |
		descriptions := self earthAndSunDescriptionBasedOn: observableUniverseState.
		self drawIn: descriptions basedOn: view.
		view canvas camera focusOnCenter.
		(Delay forMilliseconds: 30) wait]"

	animation := RTActiveAnimation new.
	animation intervalInMilliseconds: 25.
	animation blockToExecute: [
		observableUniverseStates ifNotEmpty: [
			descriptions := self earthAndSunDescriptionBasedOn: observableUniverseStates first.
			self drawIn: descriptions basedOn: view.
			observableUniverseStates := observableUniverseStates allButFirst] ].
	"Starts animation"
	animation inView: view