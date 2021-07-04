.PHONY: install package

install:
	python -m venv venv
	source venv/bin/activate && pip install -r requirements.txt

package:
	rm -rf package
	pip install --target ./package -r requirements.txt
	cd package && zip -r ../package.zip .
	zip -g -r package.zip serverless_eg
	rm -rf package
