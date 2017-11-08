CF  = static/js/cf.js
JS  = static/js/all.js
CSS = static/css/all.css

$(CSS):
	cat docs/index.html     \
	| pup 'link attr{href}' \
	| awk '! /(ico|png|xml)$$/ && ! /^http/ { print "http:" $$0 } /^http.*css$$/ {print}' \
	| xargs curl > $@

css: $(CSS) ;

$(CF):
	cat docs/index.html       \
	| pup 'script attr{src}'  \
	| awk '/cdnjs.cloudflare/ { print "http:" $$0 }' \
	| xargs curl > $@

cf: $(CF) ;

$(JS):
	cat docs/index.html       \
	| pup 'script attr{src}'  \
	| awk '! /convertkit|gumroad/ && ! /^http/ { print "http:" $$0 } ! /convertkit|gumroad/ && /^http/ {print}' \
	| xargs curl > $@

js: $(JS) ;
