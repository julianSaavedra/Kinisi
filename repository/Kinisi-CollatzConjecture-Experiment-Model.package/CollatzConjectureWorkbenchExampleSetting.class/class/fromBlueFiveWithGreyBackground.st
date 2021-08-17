instance creation
fromBlueFiveWithGreyBackground

	| visualDepiction |
	visualDepiction := CollatzConjectureVisualDepiction forNumberIn: Color blue with: #'Source Code Pro' and: 50 over: Color lightGray.
	^self from: 5 with: visualDepiction