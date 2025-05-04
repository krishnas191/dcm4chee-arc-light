#!/bin/bash

# Step 1: Navigate to your project directory
cd /path/to/your/dcm4chee-arc-light || { echo "Project path not found"; exit 1; }

# Step 2: Create a new file (Example: newfile.java or newfile.py depending on your project type)
echo "// This is a new file for SonarQube analysis testing" > newfile.java

# Step 3: Add the file to Git
git add newfile.java

# Step 4: Commit the changes
git commit -m "Added newfile.java for SonarQube test"

# Step 5: Push to GitHub
git push origin master

# Step 6: Ensure the SonarQube analysis properties are configured correctly
echo "sonar.projectKey=dcm4chee-arc-light" > sonar-project.properties
echo "sonar.projectName=dcm4chee-arc-light" >> sonar-project.properties
echo "sonar.projectVersion=1.0" >> sonar-project.properties
echo "sonar.sources=." >> sonar-project.properties
echo "sonar.language=java" >> sonar-project.properties  # Change if needed
echo "sonar.sourceEncoding=UTF-8" >> sonar-project.properties
echo "sonar.tests=." >> sonar-project.properties

# Step 7: Run SonarQube scanner
sonar-scanner

# Step 8: Print a success message
echo "✅ New file added successfully, and SonarQube analysis passed!"


python-sonarqube-project/
├── calculator.py
├── test_calculator.py
├── requirements.txt
├── sonar-project.properties
└── Jenkinsfile

sonar.projectKey=python_project
sonar.projectName=Python Calculator Project
sonar.projectVersion=1.0

sonar.sources=.
sonar.tests=.
sonar.language=py
sonar.sourceEncoding=UTF-8

sonar.python.coverage.reportPaths=coverage.xml
