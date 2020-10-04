support
withShapeFor: model do: assertion

	canvas shapes
		detect: [:shape | shape model == model ]
		ifFound: [:modelShape | assertion value: modelShape ]
		ifNone: [ self fail ]