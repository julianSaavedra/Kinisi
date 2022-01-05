menu cosntruction - private
buildCollatzMenuUsing: builder in: menu

	(builder item: #CollatzConjecture)
		label: 'Collatz Conjecture';
		target: menu;
		order: 1;
		iconName: #smallNew;
		with: [
			(builder item: 'Open new lab')
				target: menu;
				selector: #openCollatzLab;
				help: 'Open Lab over Collatz domain.';
				order: 1;
				iconName: #workspace;
				withSeparatorAfter.
			(builder item: 'ExamplesCollatz')
				label: 'Examples';
				order: 2;
				iconName: #glamorousOpen;
				with: [
					| exampleSource |
					exampleSource := CollatzConjectureWorkbenchExampleSettingSource new.
					(builder item: #example1)
						label: 'From 5 with state animation display';
						target: menu;
						iconName: #menuPin;
						selector: #openCollatzLabWith: ;
						arguments: {exampleSource settingFromFiveWithStateAnimationOnly}.
					(builder item: #example2)
						label: 'From 27 with chart and statistics displays';
						target: menu;
						iconName: #menuPin;
						selector: #openCollatzLabWith: ;
						arguments: {exampleSource settingTwentySevenWithChartAndDescriptiveStatistics}
						]
					]