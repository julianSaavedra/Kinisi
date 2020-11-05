rendering
drawIn: canvas basedOn: state

	canvas color: background.
	shape text: state number asString.
	canvas addShape: shape