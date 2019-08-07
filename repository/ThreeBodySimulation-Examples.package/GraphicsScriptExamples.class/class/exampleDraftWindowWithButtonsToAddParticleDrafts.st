graphic - nice to have
exampleDraftWindowWithButtonsToAddParticleDrafts

	| view viewSize draft |

	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	draft := UniverseObservationDraft new.
	self drawWithMenuIn: view basedOnDraft: draft with: (UnitProvider soleInstance meter with: 0.5).

	view openInWindowSized: viewSize titled: 'Draft'