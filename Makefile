build:
	docker build -t rodrigobrito/natron:2.3.15-RC12 \
		-t rodrigobrito/natron .

push:
	docker push rodrigobrito/natron:2.3.15-RC12
	docker push rodrigobrito/natron