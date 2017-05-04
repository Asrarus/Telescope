demos
exampleExpandCollapseNodesAction
	<script: 'self exampleExpandCollapseNodesAction open'>
	<tlFilter: #interaction>
	<tlFilter: #layout>
	| visu |
	(visu := TLVisualization fromEntities: (1 to: 9))
		layout:
			(TLTreeLayout new
				useOutgoingLinks;
				leavesGap: 40;
				levelGap: 20;
				yourself);
		addInteraction: (TLExpandCollapseNodesAction property: [ :n | (0 to: 9) collect: [ :i | n * 10 + i ] ]) onClick.
	visu styleSheet nodeLabel: #asString.
	^ visu