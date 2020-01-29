actions
drawIn: aView basedOn: configuration

	| gridView |
	gridView := RTGridView new.
	gridView
		color: configuration color;
		gridSize: configuration size.

	aView @ gridView