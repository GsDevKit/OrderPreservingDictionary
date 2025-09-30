"
A baseline for an order preserving dictionary [https://github.com/pharo-contributions/OrderPreservingDictionary](https://github.com/pharo-contributions/OrderPreservingDictionary)
"
Class {
	#name : #BaselineOfOrderPreservingDictionary,
	#superclass : #BaselineOf,
	#category : #'BaselineOfOrderPreservingDictionary-Base'
}

{ #category : #baselines }
BaselineOfOrderPreservingDictionary >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec package: 'Collections-OrderPreservingDictionary';
				 package: 'Collections-OrderPreservingDictionary-Tests'
					with: [ spec requires: #('Collections-OrderPreservingDictionary') ].

			"Groups"
			spec
				group: 'Core' with: #('Collections-OrderPreservingDictionary');
				group: 'Tests' with: #('Collections-OrderPreservingDictionary-Tests');
				group: 'Tools' with: #();
				group: 'CI' with: #('Tests');
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all') ].

	self baselineForGemStone: spec.
	self baselineForPharo: spec.
]

{ #category : 'baselines' }
BaselineOfOrderPreservingDictionary >> baselineForGemStone: spec [
	spec
		for: #(#'gemstone')
		do: [ 
			spec package: 'Collections-OrderPreservingDictionary'
					with: [ spec includes: 'Collections-OrderPreservingDictionary-GemStone' ].
			spec package: 'Collections-OrderPreservingDictionary-GemStone'
					with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ].
	spec
		for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x' #'gs3.5.x' #'gs3.6.x')
		do: [ 
			spec package: 'Collections-OrderPreservingDictionary'
					with: [ spec includes: 'Collections-OrderPreservingDictionary-GemStone32-' ].
			spec package: 'Collections-OrderPreservingDictionary-GemStone32-'
					with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ].
	spec
		for: #'gs3.1.x'
		do: [ 
			spec package: 'Collections-OrderPreservingDictionary'
					with: [ spec includes: #('Collections-OrderPreservingDictionary-GemStone31x') ].
			spec package: 'Collections-OrderPreservingDictionary-GemStone31x'
					with: [ spec requires: 'Collections-OrderPreservingDictionary' ] ]
]

{ #category : 'baselines' }
BaselineOfOrderPreservingDictionary >> baselineForPharo: spec [
	spec
		for: #(#'pharo')
		do: [ self baselineGT: spec ]
]

{ #category : #'baselines - legacy' }
BaselineOfOrderPreservingDictionary >> baselineGT: spec [

	spec
		for: #gt
		do: [
			spec package: 'Collections-OrderPreservingDictionary-GTExtensions' 
					with: [ spec requires: #('Collections-OrderPreservingDictionary') ].
			spec group: 'Tools'
					with: #('Collections-OrderPreservingDictionary-GTExtensions') ]
]

{ #category : #accessing }
BaselineOfOrderPreservingDictionary >> customProjectAttributes [
	"Edit to return a collection of any custom attributes e.g. for conditional loading: Array with: #'Condition1' with: #'Condition2.
	For more information see: http://code.google.com/p/metacello/wiki/CustomProjectAttributes "

	(Smalltalk globals includesKey: #GTInspector)
		ifTrue: [ ^ #(gt) ]
		ifFalse: [ ^ #() ]
]
