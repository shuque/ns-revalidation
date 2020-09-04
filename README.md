# ns-revalidation
Delegation Revalidation by DNS Resolvers

This document recommends improved DNS [RFC1034] [RFC1035] resolver behavior with respect to the processing of Name Server (NS) resource record sets (RRset) during iterative resolution. When following a referral response from an authoritative server to a child zone, DNS resolvers should explicitly query the authoritative NS RRset at the apex of the child zone and cache this in preference to the NS RRset on the parent side of the zone cut. Resolvers should also periodically revalidate the child delegation by re-quering the parent zone at the expiration of the TTL of the parent side NS RRset.


Rendered versions of the current document can be found at the following links:

* [HTML] (https://www.huque.com/ietf/ns-revalidation/draft-ietf-dnsop-ns-revalidation.html)
* [TEXT] (https://www.huque.com/ietf/ns-revalidation/draft-ietf-dnsop-ns-revalidation.txt)
