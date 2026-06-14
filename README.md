
# Azure CI/CD Pipeline for a Flask Machine Learning Application

## Overview
## Architecture Diagram

```text
Developer
    │
    ▼
GitHub Repository
    │
    ▼
GitHub Actions
(Lint + Test)
    │
    ▼
Azure App Service
(Continuous Delivery)
    │
    ▼
Flask Machine Learning API
    │
    ▼
Prediction Endpoint (/predict)
```

### Workflow

1. Code is pushed to GitHub.
2. GitHub Actions automatically runs linting and testing.
3. Successful builds are deployed to Azure App Service.
4. Azure hosts the Flask Machine Learning API.
5. Prediction requests are sent to the deployed endpoint.
6. Azure Log Streaming is used to monitor application activity.

```
```


This project demonstrates the implementation of Continuous Integration (CI) and Continuous Delivery (CD) using GitHub Actions, Azure App Service, Azure Cloud Shell, and Azure CLI.

A Flask-based Machine Learning application was deployed to Azure App Service. The application exposes a prediction endpoint that accepts housing feature data and returns a machine learning prediction in JSON format.

### Technologies Used

* Python
* Flask
* GitHub Actions
* Azure Cloud Shell
* Azure App Service
* Azure CLI
* Pytest
* Pylint

### Project Objectives

* Build a Continuous Integration pipeline using GitHub Actions
* Perform automated linting and testing
* Deploy a Flask Machine Learning application to Azure App Service
* Validate successful deployment through prediction requests
* Monitor application logs using Azure Log Streaming
