as yet unclassified
basedOn: gridMode and: absoluteZoomUnit

	| renderer |
	gridMode class = QuadrantGridMode ifTrue: [ renderer := self quadrantWith: gridMode color ].
	gridMode class = NoGridMode ifTrue: [ renderer := self noGrid ].
	gridMode class = UniformGridMode ifTrue: [ renderer := self uniformWith: gridMode color and: 20 ].
	^renderer