visiting
visitAsBarPlot: plotType

	| plotOffsets |
	plotOffsets := CentricOffsetGenerator startingFrom: 0 by: 1.
	^[RSBarPlot new
			barSize: 2;
			barOffset: (30 * plotOffsets next);
			yourself ]