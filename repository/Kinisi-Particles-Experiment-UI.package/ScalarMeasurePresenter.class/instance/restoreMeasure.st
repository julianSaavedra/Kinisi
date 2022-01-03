private
restoreMeasure

	amount number: measure amount.
	"Unit reset need to be in a separate process because selection
	item is blocked while doing the 'election has changed' callback" 
	[ unit selectItem: measure unit ] fork