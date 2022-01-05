initialization
initializeBasedOn: particle with: size

	baseShape := self shapeWith: particle color and: size.
	renderers := OrderedCollection new