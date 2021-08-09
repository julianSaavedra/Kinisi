action
process: observation andShowIn: display

	statsCollector collect: observation.
	display show: (RenderizablePicture on: statsCollector currentStatistics with: renderer)