# Full Stack Project
- **Background**: This project scope is from my knowledge acquired from my Meta Backend Professional Certification that assures backend practices. A considerable focal point of this application is based on RESTful API development that highlights the purpose of HTTP request and response cycle.
- **Description**: Full Stack Python application using Django's web framework for practical restaurant owners.
- **Tech Stack**: Python, Django, SQL, Django REST Framework, HTML, CSS, JavaScript.
- **Practices**: 
  - **Backend Creation**: Configuring the database from SQLite to MySQL.
  - **Data Modeling**: Using Python to initialize object instances.
  - **Front-End Development**: Implementing HTTP request-response cycle using Templates and Views.
  - **API Development**: Serializing objects to endpoints using query parameters.

## Features

- Robust reservation system integrated with API endpoints and an admin panel for efficient management.
-  RESTFul API endpoints for data transmission using JSON.


##  Getting Started with PRojectProject

This guide will walk you through setting up the Django project, installing the necessary dependencies, and launching the project in Visual Studio Code (VS Code).

To get started with this project, follow the steps below:

1. **Download the Project:**

   You can download the project zip file from the repository. 

## Prerequisites

Before you start, ensure you have the following installed on your machine:

- **Python** (version 3.12 or higher)
- **Pip** (Python package installer)
- **Virtualenv** (to create isolated Python environments)
- **Visual Studio Code** (VS Code)
- **MySQL** (or your preferred database system)

## Step 1: Install Python and Pip

Make sure Python and Pip are installed on your machine. You can download Python from [python.org](https://www.python.org/downloads/). Pip is included with Python, but you can verify its installation with:
```sh
python --version
pip --version
```

## Step 2: Clone the Repository
Clone this project to your local machine using Git. Open your terminal and run the following command:

```sh
git clone <https:repoLink.git>
```

If you don't use Git, you can also download the ZIP file from the GitHub repository and extract it on your machine.

## Step 3: Open the Project in VS Code
Open Visual Studio Code and navigate to File > Open Folder, then select the folder where you cloned or extracted the project.

You can also open the project directly from the terminal:

```sh
code .<projectfolder>
```
This will open the project in VS Code.

## Step 4: Create and Activate a Virtual Environment
It’s highly recommended to create a virtual environment to keep your project dependencies isolated.

Activate the included virtual enironment using:

On Windows:

```sh
.venv\Scripts\activate
```

On macOS/Linux:

```sh
source .venv/bin/activate
```
Your terminal should now show (venv) at the beginning of the prompt, indicating the virtual environment is active.

## Step 5: Install Dependencies
With the virtual environment activated, install the required project dependencies:

```sh
pip install -r requirements.txt
```
This will install Django, Django REST Framework, and other necessary dependencies listed in the requirements.txt file.

## Process Migration:
Make sure all data is up to date by runnning following:
```sh
python manage.py makemigrations
python manage.py migrate
```

## Launch Server
Run the application using:
```sh
python manage.py runserver
```
Test out the RESTful API endpoints listed in requirements.txt

## Thanks!
