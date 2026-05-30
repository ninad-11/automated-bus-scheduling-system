# 🚍 Automated Bus Scheduling and Route Management System

A full-stack web application developed to automate bus scheduling, crew allocation, route management, and reporting. The system helps reduce manual scheduling errors, prevent conflicts, and improve resource utilization.
![CI](https://github.com/ninad-11/automated-bus-scheduling-system/actions/workflows/nodejs.yml/badge.svg)

## 📌 Features

- 🚌 Bus Management
  - Add and view buses
  - Manage bus capacity and availability

- 👨‍✈️ Crew Management
  - Add drivers and conductors
  - Manage crew information and roles

- 🛣️ Route Management
  - Add routes and stops
  - Detect overlapping routes

- 📅 Duty Scheduling
  - Assign buses and crew to duties
  - Validate timings
  - Prevent scheduling conflicts

- 📊 Reports Dashboard
  - Crew Duty Report
  - Bus Utilization Report
  - Route Usage Report
  - Daily Duty Report
  - Duty Type Report

- ✅ Conflict Detection
  - Bus availability checking
  - Crew availability checking
  - Route overlap checking

- 🔄 CI/CD Integration
  - GitHub Actions workflow
  - Automated testing on every push

---

## 🛠️ Tech Stack

### Frontend
- HTML
- CSS
- Bootstrap
- JavaScript

### Backend
- Node.js
- Express.js

### Database
- MySQL

### Testing
- Jest
- Postman

### DevOps
- Git
- GitHub
- GitHub Actions

---

## 📂 Project Structure

```text
automated-bus-scheduling-system/
│
├── frontend/
│   ├── index.html
│   ├── buses.html
│   ├── crew.html
│   ├── route.html
│   ├── schedule.html
│   ├── report.html
│   └── css/
│
├── backend/
│   ├── controllers/
│   ├── routes/
│   ├── helpers/
│   ├── db/
│   ├── tests/
│   ├── server.js
│   └── package.json
│
└── .github/
    └── workflows/
```

---

## ⚙️ Installation

### Clone Repository

```bash
git clone https://github.com/ninad-11/automated-bus-scheduling-system.git
cd automated-bus-scheduling-system
```

### Install Backend Dependencies

```bash
cd backend
npm install
```

### Configure Environment Variables

Create a `.env` file inside the backend folder:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=bus_scheduling
PORT=3000
```

### Start Server

```bash
npm start
```

or

```bash
npm run dev
```

---

## 🧪 Testing

Run Jest tests:

```bash
npm test
```

API testing can be performed using Postman.

---

## 🔄 CI/CD Pipeline

GitHub Actions is configured to:

- Install dependencies
- Run tests
- Verify project build

Workflow location:

```text
.github/workflows/node.js.yml
```

---

## 📈 Future Scope

- GIS-based route visualization
- Real-time bus tracking
- Mobile application support
- AI-based schedule optimization
- Live traffic integration

---

## 📄 License

This project is developed for academic and educational purposes.
