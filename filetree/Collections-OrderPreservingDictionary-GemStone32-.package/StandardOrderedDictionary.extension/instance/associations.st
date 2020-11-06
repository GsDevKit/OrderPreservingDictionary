*Collections-OrderPreservingDictionary-GemStone32-
associations
	| associations i |

	associations := Array new: self size.
	i := 1.
	self associationsDo: [:each |
		associations at: i put: each.
		i := i + 1].
	^ associations.
