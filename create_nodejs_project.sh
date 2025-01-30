#!/bin/bash

# Define the Git repository URL for the Node.js template
NODE_TEMPLATE_REPO_URL="https://github.com/PrathameshYelpale/NodeJs_Project_Template"

# Arguments
PROJECT_NAME=$1
NEW_PROJECT_PATH=$2

# Validate the project name (only lowercase letters, numbers, _ and - allowed)
if [[ ! "$PROJECT_NAME" =~ ^[a-z0-9_-]+$ ]]; then
    echo "Error: Project name can only contain lowercase letters, numbers, underscores (_), and hyphens (-)."
    exit 1
fi

if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: setup_node_project.sh <project_name> <optional_project_path>"
    exit 1
fi

# Set default project path if not provided
if [ -z "$NEW_PROJECT_PATH" ]; then
    NEW_PROJECT_PATH=$(pwd)
fi

# Navigate to the specified project directory
cd "$NEW_PROJECT_PATH" || exit 1

# Clone the template repository
echo "Cloning Node.js template repository from $NODE_TEMPLATE_REPO_URL..."
git clone "$NODE_TEMPLATE_REPO_URL" "$PROJECT_NAME"
if [ $? -ne 0 ]; then
    echo "Failed to clone the Node.js template repository. Exiting..."
    exit 1
fi

# Navigate to the new project directory
cd "$PROJECT_NAME" || exit 1

# Remove the template's .git directory to avoid conflicts with the new project
rm -rf .git

# Replace placeholder variables in project files
echo "Customizing project files with project name $PROJECT_NAME..."
grep -rl "nodejs_template" . | xargs sed -i "" "s/nodejs_template/$PROJECT_NAME/g"

# Install dependencies
echo "Installing dependencies..."
npm install
if [ $? -ne 0 ]; then
    echo "Failed to install dependencies. Exiting..."
    exit 1
fi

# Final message
echo "Node.js project '$PROJECT_NAME' created successfully with dependencies installed."