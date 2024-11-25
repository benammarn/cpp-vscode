
# C++ Project with Dev Container Setup

This project is configured to work inside a **Dev Container** using **Docker** for a seamless development experience. Follow the instructions below to get started with the project, including setting up Docker, using the dev container, and building/running the project using the task runner in VS Code.

## Prerequisites

Before you begin, ensure you have the following installed:

### 1. **Docker**

You need to have **Docker** installed and running on your machine. Docker is required to create and manage the dev container that will isolate the development environment for the project.

- Install Docker from the official website: [https://www.docker.com/get-started](https://www.docker.com/get-started).
- After installation, ensure Docker is running by typing the following in your terminal:
  ```sh
  docker --version
  ```

### 2. **Visual Studio Code (VS Code)**

Make sure you have **Visual Studio Code** installed on your machine. If you haven't installed it yet, download and install it from: [https://code.visualstudio.com/](https://code.visualstudio.com/).

### 3. **Dev Containers Extension**

You will also need the **Dev Containers** extension in VS Code to work with the dev container.

- Install the **Remote - Containers** extension from the VS Code marketplace:
  [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

---

## Getting Started

### Step 1: Clone the Repository

First, clone the project repository to your local machine.

```sh
git clone git@gitlab.oth-regensburg.de:bem30512/TUT-IN2-RE2.git
cd TUT-IN2-RE2
```

### Step 2: Open the Project in VS Code

1. Open **Visual Studio Code**.
2. Open the project folder by going to `File > Open Folder` and selecting the project directory.

### Step 3: Reopen the Project in a Dev Container

Once the project is opened in VS Code, you'll see a prompt at the bottom-right corner asking if you want to "Reopen in Container". This will trigger the process of building and starting the dev container.

- **Click on the `Reopen in Container` button** to open the project inside the dev container.
  - This will automatically set up the environment inside Docker, install the necessary dependencies (like `gcc`, `g++`, `make`, `cmake`), and open the project in a containerized environment.

### Step 4: Open the Integrated Terminal

Once inside the dev container, you can open the integrated terminal in VS Code by going to `Terminal > New Terminal` or using the shortcut `Ctrl + `` (backtick).

### Step 5: Use the Task Runner to Build and Run the Project

VS Code’s **Task Runner** allows you to easily build and run your C++ project using CMake.

1. In the top bar of VS Code, click on **Terminal** and then **Run Task** (or use the shortcut `Ctrl+Shift+B`).
2. Choose the **CMake: Build and Run** task. This will:
   - Run the **CMake** build process.
   - Compile the source code.
   - Link the source files into an executable.
   - Run the executable once the build is complete.

If you don’t see the task runner options or if the build doesn't work, ensure you have completed the dev container setup correctly and the project is configured via **CMake**.

---

## Debugging the Project

If you want to debug your C++ project inside the dev container, you can use the built-in debugger in VS Code.

1. Open the **Run and Debug** panel by clicking on the **Run** icon in the Activity Bar on the left side of VS Code.
2. Choose **Debug (GDB)** (or another appropriate configuration if you're using a different debugger).
3. Click the green **Start Debugging** button or press `F5`.
4. VS Code will build your project (if not already built) and start a debugging session where you can set breakpoints, inspect variables, and step through the code.

---

## Committing Changes

Once you're done making changes to the project, you can commit your changes using Git inside the dev container.

1. Open the **Source Control** panel in VS Code by clicking the **Source Control** icon in the Activity Bar on the left or by pressing `Ctrl+Shift+G`.
2. Stage the changes by clicking the `+` next to modified files or using **Stage All Changes**.
3. Add a commit message and click the **✔ Commit** button.
4. To push your changes, you can either use the command line in the terminal:
   ```sh
   git push
   ```
   Or use the **Push** button in the Source Control panel.

---

## Docker and Dev Container Configuration

This project uses a **Dev Container** configuration, which is defined in `.devcontainer/devcontainer.json`. This file specifies the environment, tools, and extensions that will be available inside the dev container, making it easy to develop in a consistent environment across different machines.

- The container is based on **Alpine Linux** and includes the necessary tools for C++ development (`gcc`, `g++`, `cmake`, `make`).
- The dev container also installs useful **VS Code extensions** like:
  - **C/C++ extension** for IntelliSense and debugging.
  - **Makefile Tools** for easy Makefile management.
  - **Task Runner extension** to simplify build and run tasks.

---

## Troubleshooting

- **Docker is not running**: Ensure that Docker is running on your machine. You can check this by running `docker info` in your terminal. If Docker isn't running, start the Docker service or open Docker Desktop.
- **Dev Container isn’t opening**: If VS Code doesn’t automatically prompt to reopen the project in the dev container, you can manually reopen it by clicking the green button in the bottom-left corner of the window (or using the command palette: `Remote-Containers: Reopen in Container`).
- **CMake build fails**: Make sure that the `CMakeLists.txt` is properly configured and that you have the necessary permissions to build inside the dev container.

