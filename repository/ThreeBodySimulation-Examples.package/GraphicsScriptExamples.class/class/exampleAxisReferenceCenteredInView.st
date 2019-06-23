graphic - nice to have
exampleAxisReferenceCenteredInView

	| view viewSize |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 250@250.
	AxisReferenceRenderer new drawIn: view.
	
	view openInWindowSized: viewSize titled: 'Axis Reference - Center'