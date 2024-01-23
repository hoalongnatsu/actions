# Common GitHub Actions

## Update kubernetes manifest action
How to use:

```
- uses: ./update-kubernetes-manifest
  with:
    GIT_USER: ${{ secrets.GIT_USER }}
    GIT_PASSWORD: ${{ secrets.GIT_PASSWORD }}
    GIT_REPO: argocd
    CONTAINER_REGISTRY: $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com
    IMAGE: cms-api
    TAG: ${{ github.sha | head -c7 }}
    MANIFEST_FILE: cms-api/deployment.yaml
```

## Trigger argocd sync action
How to use:

```
- uses: ./argocd-sync
  with:
    ARGOCD_SERVER: ${{ secrets.ARGOCD_SERVER }}
    ARGOCD_USER: ${{ secrets.ARGOCD_USER }}
    ARGOCD_PASSWORD: ${{ secrets.ARGOCD_PASSWORD }}
    ARGOCD_APPLICATION: $NAMESPACE.cms-api
```