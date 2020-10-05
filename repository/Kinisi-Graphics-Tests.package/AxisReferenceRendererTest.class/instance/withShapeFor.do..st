support
withShapeFor: model do: block

	canvas shapes
		detect: [:shape | shape model = model ]
		ifFound: [:modelShape | block value: modelShape ]
		ifNone: [ self fail ]