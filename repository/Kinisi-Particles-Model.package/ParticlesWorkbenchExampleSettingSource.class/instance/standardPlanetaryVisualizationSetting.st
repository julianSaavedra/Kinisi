private
standardPlanetaryVisualizationSetting

	^[:workbench | 
	 	workbench
		  background: Color black;
		  scale: (UnitProvider soleInstance kilometer with: 25e6);
		  quadrantGridWith: Color gray ]