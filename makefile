publish:
	rm *.tgz
	helm package charts/*
	helm repo index --url https://ncolon.github.io/refarch-ocp4-gitops .
	git add .
	git commit -m "charts"
	git push
