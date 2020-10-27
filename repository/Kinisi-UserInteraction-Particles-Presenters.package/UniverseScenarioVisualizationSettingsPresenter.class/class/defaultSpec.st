specs
defaultSpec

	"| grid |
	grid := SpBoxLayout newHorizontal.
	grid
		add: #gridVisibility width: 100;
		add: #gridColor expand: true fill: true padding: 5."

	^SpBoxLayout newVertical
		spacing: 2;
		add: #background height: 27;
		add: #zoom height: 60;
		add: #scale height: 27;
		"add: grid height: 30;"
		yourself
		