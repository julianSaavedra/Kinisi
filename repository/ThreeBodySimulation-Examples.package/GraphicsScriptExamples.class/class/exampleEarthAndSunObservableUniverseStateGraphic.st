examples - grid
exampleEarthAndSunObservableUniverseStateGraphic

	| view viewSize draft |
	view := RTView new.
	"Background color"
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.

	draft := self earthAndSunInitialUniverseDraft.
	self updateDraft: draft basedOn: self earthAndSunSingleObservableUniverseState.
	self drawIn: view basedOnDraft: draft.
	
	view canvas camera focusOnCenter
