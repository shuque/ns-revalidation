SOURCE  = \
	draft-ietf-dnsop-ns-revalidation

all:	$(SOURCE).txt $(SOURCE).html

$(SOURCE).txt:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml -n --text

$(SOURCE).html:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml -n --html

$(SOURCE).xml:	$(SOURCE).mkd
	kramdown-rfc2629 $(SOURCE).mkd >$(SOURCE).new.xml
	mv $(SOURCE).new.xml $(SOURCE).xml

clean:
	rm -rf $(SOURCE).txt $(SOURCE).html
