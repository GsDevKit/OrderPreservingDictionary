tests
testKeysAndValuesRemove
	| dictionary |

	dictionary := self dictionaryWithOrderedAssociations.
	self orderedAssociations withIndexDo: [:removedAssociation :i |
		| unremovedAssociations |
		unremovedAssociations :=
			(self orderedAssociationsAllButFirst: i) asOrderedCollection.
		dictionary keysAndValuesRemove: [:key :value |
			(self isTestingIdentityDictionary
				ifTrue: [key == removedAssociation key]
				ifFalse: [key = removedAssociation key])
				ifTrue: [
					self assert: value equals: removedAssociation value.
					true]
				ifFalse: [| unremovedAssociation |
					unremovedAssociation := unremovedAssociations removeFirst.
					self isTestingIdentityDictionary
						ifTrue: [self assert: key == unremovedAssociation key]
						ifFalse: [self assert: key equals: unremovedAssociation key].
					self assert: value equals: unremovedAssociation value.
					false]].
		self assert: unremovedAssociations isEmpty.
		self
			assertKey: removedAssociation key
			wasRemovedfrom: dictionary].
	self assert: dictionary isEmpty.