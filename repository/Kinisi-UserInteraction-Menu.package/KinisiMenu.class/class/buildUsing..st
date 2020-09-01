menu construction
buildUsing: builder

	"See WorldState class>>#pharoItemsOn:"

	| menu |

	menu := self new.
	(builder item: #Kinisi)
		label: 'Kinisi';
		iconName: #remote;
		order: 2.5;
		help: 'Simulator';
		withSeparatorAfter;
		with: [ (builder item: #NewCollatzLab)
				target: menu;
				selector: #newCollatzLab;
				help: 'Open lab for Collatz.';
				order: 2;
				"keyText: 'Ctrl+K+N';"
				iconName: #workspace.
			(builder item: #NewParticlesWorkbench)
				target: menu;
				selector: #newParticlesWorkbench;
				help: 'Open a new particles workbench.';
				order: 2;
				"keyText: 'Ctrl+K+N';"
					iconName: #page ]