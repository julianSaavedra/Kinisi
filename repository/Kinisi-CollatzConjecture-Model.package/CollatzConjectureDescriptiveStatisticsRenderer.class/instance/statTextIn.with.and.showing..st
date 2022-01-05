private 
statTextIn: indicatorBox with: fontSize and: resultLabelOffset showing: indicatorResult

	| text |
	text := RSLabel new.
	text fontSize: fontSize.
	text text: indicatorResult asString.
	text color: color.
	RSLocation new
		offset: resultLabelOffset;
		stick: text on: indicatorBox.
	^text