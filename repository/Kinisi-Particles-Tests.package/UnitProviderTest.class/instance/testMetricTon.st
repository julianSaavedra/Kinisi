tests
testMetricTon

	| metricTon |
	metricTon := unitProvider metricTon.
	
	self assert: metricTon name equals: 'MetricTon'.
	self assert: metricTon sign equals: 't'.
	self assert: metricTon baseUnit equals: unitProvider kilogram