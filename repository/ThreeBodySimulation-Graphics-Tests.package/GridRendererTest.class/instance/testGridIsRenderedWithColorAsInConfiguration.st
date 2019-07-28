tests
testGridIsRenderedWithColorAsInConfiguration

	| view color configuration |

	view := RTView new.
	color := Color red.
	configuration := GridConfiguration new.
	configuration color: color.

	GridRenderer new drawIn: view basedOn: configuration.

	self assert: [ :grid | grid color = color ] withGridIn: view