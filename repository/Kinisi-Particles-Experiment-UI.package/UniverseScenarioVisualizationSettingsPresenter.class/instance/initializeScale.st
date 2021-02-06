initialization
initializeScale

	| unitProvider units |
	unitProvider := UnitProvider soleInstance.
	units := { unitProvider milimeter. unitProvider meter. unitProvider kilometer}.

	scale := self
		instantiate: ScalarMeasurePresenter
		on: workbench scenario scale.
	scale
		label: 'Scale';
		units: units;
		changeModelWith: [:targetScale | workbench scale: targetScale ]