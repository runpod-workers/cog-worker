<div align="center">

<h1>Cog Worker Skeleton</h1>

Easily convert cog based images to a runpod serverless worker.

</div>

## Getting Started

This repository provides a template for creating RunPod serverless workers from Cog-based models.

### Building the Docker Image

```bash
git clone https://github.com/runpod-workers/cog-worker.git

cd cog-worker/

# Build the Docker image
docker build --tag user/repo:tag .

docker push user/repo:tag
```

### Customizing for Your Model

To use this worker with your specific Cog model:

1. Install your model's dependencies in the Dockerfile
2. Create a `predict.py` file with your model's prediction logic
3. Update the handler.py file if needed to work with your specific model

## RunPod Deployment

After pushing your Docker image, you can deploy it as a RunPod Serverless endpoint through the RunPod platform.

## Testing

The repository includes a test_input.json file that can be used to test your worker:

```json
{
  "input": {
    "prompt": "A beautiful landscape with mountains and a lake"
  }
}
```

You can customize this file to match your model's expected input format.