publish:
	rm *.tgz || true
	helm package charts/*
	helm repo index --url https://ncolon.github.io/refarch-ocp4-gitops .
	git add .
	git commit -m "charts"
	git push
	sleep 5
	cd charts/allinone
	helm dep up
	cd ../../
	git add .
	git commit -m "charts"
	git push
