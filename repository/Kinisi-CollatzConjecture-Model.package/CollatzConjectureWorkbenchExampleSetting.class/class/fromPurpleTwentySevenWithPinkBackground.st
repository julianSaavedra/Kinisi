instance creation
fromPurpleTwentySevenWithPinkBackground

	| visualDepiction |
	visualDepiction := CollatzConjectureVisualDepiction forNumberIn: Color purple with: #'Source Sans Pro' and: 60 over: Color pink.
	^self from: 27 with: visualDepiction