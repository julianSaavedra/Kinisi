examples - grid
exampleEarthAndSunDraftGraphic

	| view viewSize gridConfiguration |

	"Background color"
	"#@: add an interaction to the node"
	"view @ RTDraggableView."
	"Grid size - separation between lines of the grid"
	"massScale := UnitProvider soleInstance kilogram with: 1e6.
	sizeTranslationBlock := [:mass | mass / massScale ]"
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	gridConfiguration := self exampleEarthAndSunGridConfiguration.
	self
		drawIn: view
		basedOnDraft: self earthAndSunInitialUniverseDraft
		with: gridConfiguration.
	view canvas camera focusOnCenter

	"currentPosition := initialPosition.
	animation := RTActiveAnimation new.
	animation intervalInMilliseconds: 40.
	animation blockToExecute: [
		currentPosition := currentPosition  + (1@1).
		particleElement translateTo: currentPosition ].
	Starts animation
	animation inView: view."