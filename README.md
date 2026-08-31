# CI/CD Learning Project 🚀

This repository is a complete, hands-on guide to mastering Continuous Integration and Continuous Deployment (CI/CD) using **GitHub Actions**, **Docker**, and **AWS EC2**. 

## 📁 What We Built

Here is a breakdown of all the workflows we created and how to use them:

### 1. Basic CI & Testing (`.github/workflows/ci.yml`)
- **What it does:** Automatically installs Python and runs our unit tests (`test_math_operations.py`) every time code is pushed.
- **How to test it:** Make a change to `math_operations.py` (like breaking a math function) and push it. The CI will fail and catch the bug!

### 2. Manual Triggers (`.github/workflows/echo.yml`)
- **What it does:** Demonstrates the `workflow_dispatch` trigger, allowing you to manually start a workflow and provide custom text inputs.
- **How to test it:** Go to the **Actions** tab, click "Echo Only Workflow", click "Run workflow", and type a custom message.

### 3. Job Dependencies (`.github/workflows/dependencies.yml`)
- **What it does:** Shows how to run jobs in parallel and sequentially using the `needs` keyword. 
- **How to test it:** Run the workflow manually and watch the visual graph. You will see `independent_check` and `build_job` run at the same time, while `deploy_job` waits for multiple jobs to finish.

### 4. Artifacts (`.github/workflows/artifacts.yml`)
- **What it does:** Proves that each job runs on a fresh virtual machine. It uses `upload-artifact` and `download-artifact` to pass a text file from Job 1 to Job 2.
- **How to test it:** Run the workflow, and then scroll to the bottom of the workflow summary page to download the generated `.zip` artifact!

### 5. Code Linting (`.github/workflows/lint.yml`)
- **What it does:** Uses `flake8` to scan the Python code for formatting errors, unused variables, and style guide violations.
- **How to test it:** Add some messy code (like an unused import) to `math_operations.py` and run the workflow to see it fail.

### 6. Docker & GHCR (`.github/workflows/ghcr.yml` & `Dockerfile`)
- **What it does:** Packages the Python app into a Docker container and publishes it to the **GitHub Container Registry (GHCR)**.
- **How to access it:** Go to the main page of this repository, look at the **Packages** section on the right sidebar, and you will see the compiled Docker image ready to be pulled!

### 7. AWS EC2 Deployment (`.github/workflows/deploy.yml`)
- **What it does:** The ultimate CD pipeline! It uses SSH to securely copy the `index.html` file directly to a live AWS EC2 server running Nginx on Amazon Linux.
- **How it works:** It triggers *automatically* anytime `index.html` is modified. It uses GitHub Secrets (`EC2_HOST`, `EC2_USERNAME`, `EC2_SSH_KEY`) to log in securely.
- **How to access it:** Visit the Public IP address of your EC2 instance in a web browser!
