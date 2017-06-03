.PHONY: install
install: setup_apex

.PHONY: setup_apex
setup_apex:
	curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh

.PHONY: train
train:
	python3 functions/train/main.py

.PHONY: predict
predict:
	python3 functions/predict/main.py

.PHONY: invoke_train
invoke_train:
	apex invoke train

.PHONY: invoke_predict
invoke_predict:
	apex invoke predict

.PHONY: deploy
deploy:
	apex deploy
