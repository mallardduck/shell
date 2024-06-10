# renovate: datasource=github-release-attachments depName=rancher/helm
HELM_VERSION := v3.15.1-rancher2

# renovate: datasource=github-release-attachments depName=kubernetes-sigs/kustomize extractVersion=kustomize/v(?<version>\d+\.\d+\.\d+)
KUSTOMIZE_VERSION := v5.4.2
# renovate: datasource=github-release-attachments depName=kubernetes-sigs/kustomize versioning=regex:^kustomize/v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$ digestVersion=kustomize/v5.4.1
KUSTOMIZE_SUM_arm64 := 175af88af8a7d8d7d6b1f26659060950f0764d00b9979b4e11b61b8b212b7c22
# renovate: datasource=github-release-attachments depName=kubernetes-sigs/kustomize versioning=regex:^kustomize/v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$ digestVersion=kustomize/v5.4.1
KUSTOMIZE_SUM_amd64 := 881c6e9007c7ea2b9ecc214d13f4cdd1f837635dcf4db49ce4479898f7d911a3
# renovate: datasource=github-release-attachments depName=kubernetes-sigs/kustomize versioning=regex:^kustomize/v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$ digestVersion=kustomize/v5.4.1
KUSTOMIZE_SUM_s390x := 3724d3a711a6f06650ef31e9d6a7c8aaaed0727183d6f61b2103ffc717af68a1

# renovate: datasource=github-release-attachments depName=derailed/k9s
K9S_VERSION := v0.32.4
# renovate: datasource=github-release-attachments depName=derailed/k9s digestVersion=v0.32.4
K9S_SUM_arm64 := adfbe3de1ffd3f119ff27d76d9a493e08adb2536f9b79d08fa245ddb75a5fe52
# renovate: datasource=github-release-attachments depName=derailed/k9s digestVersion=v0.32.4
K9S_SUM_amd64 := d62611d9be2c35b782a765e98421500196acbf8be844cd3d9e32d4fa7846da05
# renovate: datasource=github-release-attachments depName=derailed/k9s digestVersion=v0.32.4
K9S_SUM_s390x := 29ae8a00a01a9108473dea0fd4d60e472496ec6203060f06629f402ac6211750

# Reduces the code duplication on Makefile by keeping all args into a single variable.
IMAGE_ARGS := --build-arg HELM_VERSION=$(HELM_VERSION) \
			  --build-arg KUSTOMIZE_VERSION=$(KUSTOMIZE_VERSION) --build-arg KUSTOMIZE_SUM_arm64=$(KUSTOMIZE_SUM_arm64) --build-arg KUSTOMIZE_SUM_amd64=$(KUSTOMIZE_SUM_amd64) --build-arg KUSTOMIZE_SUM_s390x=$(KUSTOMIZE_SUM_s390x) \
			  --build-arg K9S_VERSION=$(K9S_VERSION) --build-arg K9S_SUM_arm64=$(K9S_SUM_arm64) --build-arg K9S_SUM_amd64=$(K9S_SUM_amd64) --build-arg K9S_SUM_s390x=$(K9S_SUM_s390x)
