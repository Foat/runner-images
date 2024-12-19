# Frozen Tapestry Runner Images

This repository provides Docker images optimized for `act_runner` to execute GitHub Actions workflows.

## Key Features

- **Base Images**: Built on `ghcr.io/catthehacker/ubuntu`.
- **Multi-Platform**: Supports `linux/amd64` and `linux/arm64`.
- **Automated Builds**: Includes workflows to build and release images.

## Images

### Available Versions
- **Ubuntu 24.04**
    - Tags:
        - `ghcr.io/frozen-tapestry/runner-images:ubuntu-24.04`
        - `ghcr.io/frozen-tapestry/runner-images:ubuntu-latest`

- **Ubuntu 22.04**
    - Tags:
        - `ghcr.io/frozen-tapestry/runner-images:ubuntu-22.04`

### Pull Commands
```bash
docker pull ghcr.io/frozen-tapestry/runner-images:ubuntu-latest
docker pull ghcr.io/frozen-tapestry/runner-images:ubuntu-24.04
```

## CI/CD Workflow

- **Triggers**: Runs monthly and on pushes to the `prime` branch.
- **Build Process**:
    - Multi-platform builds using QEMU and Docker BuildX.
    - Metadata like version, revision, and creation date included in labels.
    - Images pushed to GitHub Container Registry (GHCR).

## Links

- [gitea/runner-images](https://gitea.com/gitea/runner-images)
- [catthehacker/docker_images](https://github.com/catthehacker/docker_images)

## License

This project is licensed under the [MIT License](LICENSE).

For more details, visit the [repository](https://github.com/Frozen-Tapestry/runner-images).