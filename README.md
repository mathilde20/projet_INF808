# projet_INF808

## How to run the project

### 1. Dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Taskfile](https://taskfile.dev/installation/)

### 2. Run the project

- Clone the repository
- Run the following command in the root directory of the project:

```bash
task generate-single-node-certs
task start-single-node
```

**Notes:**

- The first time you run the project, it will take a few minutes to download the necessary Docker images.
- You only have to run the `task generate-single-node-certs` command once. It will generate the necessary certificates for the single-node cluster.

### 3. Access the Wazuh dashboard

- Open your web browser and go to [https://localhost:80/app/wazuh](https://localhost:80/app/wazuh)
