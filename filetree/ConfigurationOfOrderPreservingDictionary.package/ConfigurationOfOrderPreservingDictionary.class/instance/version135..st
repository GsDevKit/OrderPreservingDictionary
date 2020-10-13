outdated - versions
version135: spec 
        <version: '1.3.5' imports: #('1.3.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.25'.
			spec package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.20'.
                ].