support
elementWithShapeAndAlreadyInViewWithModel: anObject

	| element |
	element := RTElement new.
	element
		addShape: RTEllipse new;
		model: anObject.
	RTView new add: element.
	
	^element