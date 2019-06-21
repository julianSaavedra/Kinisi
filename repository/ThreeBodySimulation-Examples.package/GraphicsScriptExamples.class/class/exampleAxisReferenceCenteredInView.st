graphic - nice to have
exampleAxisReferenceCenteredInView

	| view viewSize axisReferenceRenderer |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 250@250.
	axisReferenceRenderer := AxisReferenceRenderer new.
	axisReferenceRenderer drawIn: view.
	
	view openInWindowSized: viewSize titled: 'Axis Reference - Center'