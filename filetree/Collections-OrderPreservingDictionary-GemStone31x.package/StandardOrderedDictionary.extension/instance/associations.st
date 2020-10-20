*Collections-OrderPreservingDictionary-GemStone31x
associations
	| associations i |

	associations := Array new: self size.
	i := 1.
	self associationsDo: [:each |
		associations at: i put: (each key -> each value).
		i := i + 1].
	^ associations.
