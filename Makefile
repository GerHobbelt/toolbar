

LOCAL_GRUNT = node_modules/grunt-cli/bin/grunt


.PHONY: all clean superclean


all: $(LOCAL_GRUNT)
	$(LOCAL_GRUNT) --force


# did 'npm install' run before?
$(LOCAL_GRUNT):
	@echo "*** Installing NodeJS / GRUNT for RevealJS ***"
	npm install


clean:
	-rm -f *.min.js

superclean: clean
	-rm -rf node_modules

