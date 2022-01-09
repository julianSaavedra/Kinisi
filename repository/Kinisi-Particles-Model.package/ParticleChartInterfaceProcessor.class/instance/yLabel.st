private
yLabel

	^RSYLabelDecoration new
		  title: ('<1s>[t]' expandMacrosWith: measureDimension name asUppercase);
		  rotationAngle: 90;
		  fontSize: 13;
		  offset: -20 @ 0