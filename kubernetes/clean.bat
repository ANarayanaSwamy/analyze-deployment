@echo off
call kubectl delete deployments --all
call kubectl delete services --all
call kubectl delete pods --all
call kubectl delete pv --all

call minikube addons disable default-storageclass
call kubectl apply -f minikube-storage.yaml
REM minikube --ip 192.168.99.1 mount "C:\\Users\\Dell\\Desktop\\pod_data:/minikube-host"
