as yet unclassified
drillDownAction: html onVisu: visuId
	| interaction |
	interaction := TLExpandCollapseCompositeNodeAction new
		condition: [ :drawable | 
					drawable isNode
						and: [ 
							drawable isComposite
								and: [ 
									drawable childrenNodes
										ifEmpty: [ true ]
										ifNotEmpty: [ drawable childrenNodes anySatisfy: [ :child | child isVisible not ] ] ] ] ];
		onExternalTrigger.
	html mdlButton
		onClick: (interaction externalTriggerForVisuId: visuId);
		raised;
		primaryColor;
		with: 'Click to unfoldComposite'.
	^ interaction