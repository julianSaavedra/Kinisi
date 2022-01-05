private
pointFor: referenceName with: referenceBasePosition in: canvas

	| pointElement |
	pointElement := self dotShape.
	pointElement model: referenceName asString.
	canvas add: pointElement.
	pointElement translateTo: referenceBasePosition + position.
	^pointElement