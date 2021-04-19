build:
	docker build -t mateusprado/webapp-k8s-101:0.0.3 .

push:
	docker push mateusprado/webapp-k8s-101:0.0.3

deploy:
	kubectl apply -f kubernetes/deployment.yml