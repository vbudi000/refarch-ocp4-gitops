publish:
	rm *.tgz || true
	helm package charts/machinesets
	helm package charts/storageconfig
	helm package charts/infraconfig
	helm repo index --url https://ncolon.github.io/refarch-ocp4-gitops .
	git add .
	git commit -m "charts"
	git push
