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