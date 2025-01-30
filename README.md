# NodeJs Project Quick Start Template⚡️ 

This template simplifies the process of creating a NodeJs project by providing a single script file that sets up the project with pre-configured features like:

- **Robust Folder Structure**
- **Boiler Plate Code**
- **MongoDB Connection**
- **Sample Code For Each Creating APIs**
- **Required Dependencies Pre-Installed**

## Features
- **Quick Setup:** Automatically generate a NodeJS project with essential files and configurations.
- **Customizable:** Modify the generated files as per your requirements.
- **Time-Saving:** Skip repetitive setup tasks and focus on building your app.

---

## Getting Started
- Prerequisite Softwares that need to be installed
  - [Node Js](https://nodejs.org/en)
  - [Git](https://git-scm.com/)
- [For Windows](#for-windows)
- [For Mac or Linux](#for-mac-or-linux)
---
### For Windows
#### 1. Download the Script File
Download the script file from this repository:
```bash
curl -O https://raw.githubusercontent.com/PrathameshYelpale/NodeJs-Project-Template/refs/heads/main/create_nodejs_project.bat
```
### 2. Run the Script
Run the downloaded script in your command prompt to create a new Flutter project:
```bash
create_nodejs_project #<project-name>
```
---

### For Mac or linux


### 1. Download the Script File
Download the script file from this repository:
```bash
curl -O https://raw.githubusercontent.com/PrathameshYelpale/NodeJs-Project-Template/refs/heads/main/create_nodejs_project.sh
```
### 2. Give the execute permissions
```bash
chmod +x create_nodejs_project.sh
```

### 3. Run the Script
Run the downloaded script in your terminal to create a new Flutter project:
```bash
./create_nodejs_project.sh #<project-name>
```
---
The script will:
- Create a new NodeJs project
- Add pre-configured files
- Add necessary dependencies to `package.json`

Run Project
--
All commands are same as normal node project, this reporitory just creating template.
Pre-quisite - Before running the project check whether **nodemon** is globally installed in your machine or not. If not then install it it using below command 
```
npm install --g nodemon
```
Now, you can run the project using below command
```
npm start
```

## What's Included
The script adds the following files to your project:

### 1. Pre-configured Directory Structure
-**`index.js`**: Main file for Project
- **`src/`**: Core NodeJs Project files, including:
  - `/config/mongodb.js`: A sample of mongodb connection for quick onboarding.
  - `/controllers/userController.js`: A sample of user controller.
  - `/middlewares/authMiddleware.js`: A sample of authentication middleware.
  - `/models/userModel.js`: A sample of model for user schema.
  - `/routes/userRoutes.js`: A sample of user route.

### 2. Updated `package.json`
Dependencies for NodeJs Backend Project and more.

---

## Dependencies
The script adds the following dependencies to your project:
- `express`
- `mongoose`
- `cors`
- `body-parser`
- `dotenv`

---

## Customization
After running the script, you can:
1. Edit the all the pre-given file to fit your requirement.
2. Add more routes and corresponding required code in the directory.

---

## Contributing
Contributions are welcome! Feel free to fork this repository, make your changes, and submit a pull request.

---

## License
This project is licensed under the [MIT License](LICENSE).

---

## Support
If you encounter any issues or have questions, please open an issue in this repository.

Happy coding! 🚀