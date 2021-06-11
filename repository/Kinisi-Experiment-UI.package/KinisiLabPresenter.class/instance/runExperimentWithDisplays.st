experiment
runExperimentWithDisplays

	| experiment displayProvider displays |
	experiment := lab newExperiment.
	displayProvider := DisplayProvider using: (PresenterDisplayProviderSpecification with: ScreenProvider new).
	displays := displayProvider displaysFor: experiment.
	displays do: [:display |
		| displayPresenter |
		displayPresenter := self instantiate: DisplayPresenter on: display.
		displayPresenter openWithSpec ].
	experiment run