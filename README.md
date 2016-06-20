# Base Node Image

A base node image with node-inspector installed and managed through s6-overlay for easy local development and production deployment.

## Usage

To run with node-inspector running, pass the port to bind to with the `START_NODE_INSPECTOR_ON_PORT` environment variable.  If the environment variable isn't passed, node-inspector will not be started.

```
docker run -e "START_NODE_INSPECTOR_ON_PORT=9090" -p 9090:9090 -i -t my-node-app:latest node --debug=5858 server.js
```
