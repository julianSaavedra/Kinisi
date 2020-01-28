tests
testGridIsRenderedWithSizeAsInConfiguration

	| view configuration |

	view := RTView new.
	configuration := GridConfiguration new.
	configuration size: 25.

	GridRenderer new drawIn: view basedOn: configuration.

	self assert: [ :grid | grid gridSize = 25 ] withGridIn: view