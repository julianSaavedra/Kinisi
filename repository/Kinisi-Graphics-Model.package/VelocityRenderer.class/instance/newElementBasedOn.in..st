private
newElementBasedOn: velocityVector in: aView

	| endPointElement |
	endPointElement := self newEndPointElementIn: aView.
	self translate: endPointElement basedOn: velocityVector.
	^endPointElement