options
openCollatzLabWith: example

	| presenterConfiguration lab |
	presenterConfiguration := LabPresenterSpecification forCollatzConjectureWith: example.
	lab := KinisiLabPresenter on: presenterConfiguration.
	"lab apply: example."
	lab openWithSpec