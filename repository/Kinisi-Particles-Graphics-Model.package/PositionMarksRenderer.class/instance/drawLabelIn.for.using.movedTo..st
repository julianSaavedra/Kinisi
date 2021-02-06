private
drawLabelIn: canvas for: axis using: oneDimensionPosition movedTo: point

	| baseShape text |
	baseShape := self dotShape.
	text := self labelTextFor: axis with: oneDimensionPosition.
	baseShape model: text.
	self setLabelOn: baseShape.
	canvas add: baseShape.
	baseShape translateTo: point