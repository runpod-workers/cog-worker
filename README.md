<div align="center">

<h1>Cog Worker Skeleton</h1>

Easily convert cog based images to a runpod serverless worker.

</div>

## Getting Started

```bash
git clone https://github.com/runpod-workers/cog-worker.git

cd cog-worker/

docker build --tag user/repo:tag --build-arg COG_REPO=user --build-arg COG_MODEL=model_name --build-arg COG_VERSION=model_version .

docker push user/repo:tag
```
