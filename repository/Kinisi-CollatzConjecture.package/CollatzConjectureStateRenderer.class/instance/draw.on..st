rendering
draw: state on: canvas

	canvas color: background.
	shape text: state number asString.
	canvas addShape: shape