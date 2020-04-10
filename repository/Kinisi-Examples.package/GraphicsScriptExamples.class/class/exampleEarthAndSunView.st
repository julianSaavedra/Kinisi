example - UI
exampleEarthAndSunView

	| view viewSize universe renderer |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	universe := self earthAndSunInitialUniverseObservation.
	universe scale: (UnitProvider soleInstance kilometer with: 10e6).
	renderer := UniverseRenderer basedOn: universe.
	renderer drawIn: view basedOn: universe.
	view canvas camera focusOnCenter
