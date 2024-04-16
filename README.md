# projet_INF808

## How to run the project

### 1. Dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Taskfile](https://taskfile.dev/installation/)

### 2. Run the project

- Clone the repository
- Run the following command in the root directory of the project:

```bash
task setup
task up
```

**Notes:**

- The first time you run the project, it will take a few minutes to download the necessary Docker images.
- You only have to run the `task setup` command once. It will generate the necessary certificates for the ELK cluster.
- If you don't want to run the filebeat loging module you can replace the `task up` command with the `task elk` command. It will start the ELK stack without the filebeat module.
- The command `task up` will launch the ELK stack with the filebeat and metricbeat modules. It will also launch a dvwa container to generate logs and metrics.

### 3. Access the Kibana dashboard

- Open your web browser and go to [https://localhost:5601](https://localhost:5601)
- The default credentials are:
  - Username: `elastic`
  - Password: `changeme`

### 4. Setup rules

In order to setup the rules, you need to go to the `Observability` tab in the Kibana dashboard and then click on `Alerts` under `Overview`. Then on the top right corner you can add new rules by clicking on the `Manage Rules` button.

### 5. Launch an attack on the DVWA

In order to launch an attack on the DVWA container, the following commands are available:

```bash
task pings              # Launch a ping attack
task bruteforce         # Launch a bruteforce attack
task portscanning       # Launch a port scanning attack
task webcrawling        # Launch a web crawling attack
task attack             # Launch all the attacks
```

### 6. Stop the containers

Run the following command in the root directory of the project:

```bash
task down
```
