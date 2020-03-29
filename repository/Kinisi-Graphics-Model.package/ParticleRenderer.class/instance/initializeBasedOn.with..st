initialization
initializeBasedOn: particle with: size

	shape := self shapeWith: particle color and: size.
	renderers := OrderedCollection new