"
A TLAction is the superclass for all actions without parameters on TLDrawable in Telescope.

Instance Variables
	condition:		<Object>

condition
	- xxxxx

"
Class {
	#name : #TLDrawableAction,
	#superclass : #TLAction,
	#category : 'Telescope-Actions'
}

{ #category : #interactions }
TLDrawableAction class >> onClick [
	^ self new onClick
]

{ #category : #interactions }
TLDrawableAction class >> onDoubleClick [
	^ self new onDoubleClick
]

{ #category : #interactions }
TLDrawableAction class >> onMove [
	^ self new onMove
]

{ #category : #interactions }
TLDrawableAction class >> onRightClick [
	^ self new onRightClick
]

{ #category : #interactions }
TLDrawableAction class >> withMenu: aTitle [
	^ self new withMenu: aTitle
]

{ #category : #interactions }
TLDrawableAction class >> withShape: aShape [
	^ self new withShape: aShape
]

{ #category : #interactions }
TLDrawableAction class >> withShapeManager: aShapeManager [
	^ self new withShapeManager: aShapeManager
]

{ #category : #interactions }
TLDrawableAction class >> withTriggerStyle: aSymbolOrBlockClosure [ 
	^ self new withTriggerStyle: aSymbolOrBlockClosure
]

{ #category : #action }
TLDrawableAction >> actionOn: aTLDrawable [
	self subclassResponsibility 
]

{ #category : #action }
TLDrawableAction >> actionOn: aTLDrawable parameter: aParameter [
	self actionOn: aTLDrawable
]

{ #category : #interactions }
TLDrawableAction >> onClick [
	^ TLClickInteraction new action: self 
]

{ #category : #interactions }
TLDrawableAction >> onDoubleClick [
	^ TLDoubleClickInteraction new action: self 
]

{ #category : #interactions }
TLDrawableAction >> onExternalTrigger [
	^ TLExternalTriggerInteraction new action: self 
]

{ #category : #'as yet unclassified' }
TLDrawableAction >> onExternalTriggerOnId: aString [
	| interaction |
	interaction := self onExternalTrigger.
	(TLCytoscapeWebSocketDelegate visualizationWithId: aString) addInteraction: interaction.
	^ interaction
]

{ #category : #interactions }
TLDrawableAction >> onMove [
	^ TLNodeMovedInteraction new action: self 
]

{ #category : #interactions }
TLDrawableAction >> onRightClick [
	^ TLRightClickInteraction new action: self 
]

{ #category : #'as yet unclassified' }
TLDrawableAction >> onShiftMouseOver [
	^ TLShiftMouseOverInteraction new action: self 
]

{ #category : #'as yet unclassified' }
TLDrawableAction >> regularActionIfNecessaryOn: aTLDrawable [
	"The default behavior is to always perform action"
	self actionOn: aTLDrawable
]

{ #category : #'multi-visus' }
TLDrawableAction >> updateAlso: aDrawable [
	^ TLUpdateAction drawable: aDrawable action: self 
]

{ #category : #interactions }
TLDrawableAction >> withMenu: aTitle [
	^ TLMenuInteraction new title: aTitle; action: self 
]

{ #category : #interactions }
TLDrawableAction >> withShape: aShape [
	^ TLShapeInteraction new action: self; shape: aShape
]

{ #category : #interactions }
TLDrawableAction >> withShapeManager: aShapeManager [
	^ TLShapeInteraction new action: self; shapeManager: aShapeManager
]

{ #category : #interactions }
TLDrawableAction >> withTriggerStyle: aSymbolOrBlockClosure [ 
	^ TLShapeInteraction new action: self; withTriggerStyle: aSymbolOrBlockClosure
]