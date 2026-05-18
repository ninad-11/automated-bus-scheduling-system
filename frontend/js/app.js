// Handle Route Form Submission
document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("routeForm");

    if (form) {
        form.addEventListener("submit", function (e) {
            e.preventDefault();

            const routeName = document.getElementById("routeName").value.trim();

            if (!routeName) {
                alert("Route name required");
                return;
            }

            fetch("http://localhost:3000/api/add-route", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify({
                    routeName,
                    stopIds: [1,2,3]
                })
            })
            .then(res => {
                console.log("Status:", res.status);
                return res.json();
            })
            .then(data => {
                console.log("Response:", data);

                const li = document.createElement("li");
                li.innerText = routeName;
                document.getElementById("routeList").appendChild(li);

                document.getElementById("routeName").value = "";
            })
            .catch(err => console.error("Error:", err));
        });
    }
});

// Handle Duty Form Submission
document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("dutyForm");

    if (form) {
        form.addEventListener("submit", function (e) {
            e.preventDefault();

            const data = {
                busId: document.getElementById("busId").value.trim(),
                crewId: document.getElementById("crewId").value.trim(),
                startTime: document.getElementById("startTime").value,
                endTime: document.getElementById("endTime").value,
                dutyType: document.getElementById("dutyType").value
            };

            // ✅ Validation
            if (!data.busId || !data.crewId || !data.startTime || !data.endTime) {
                alert("All fields are required!");
                return;
            }

            // ✅ Time validation (extra important)
            if (data.startTime >= data.endTime) {
                alert("End time must be after start time!");
                return;
            }

            // Call API if valid
            createDuty(data);
        });
    }
});


//Login/register page

// // LOGIN
// const loginForm = document.getElementById("loginForm");

// if (loginForm) {
//     loginForm.addEventListener("submit", function(e) {
//         e.preventDefault();

//         const username = document.getElementById("username").value;
//         const password = document.getElementById("password").value;

//         const storedUser = JSON.parse(localStorage.getItem("user"));

//         if (storedUser && storedUser.username === username && storedUser.password === password) {
//             localStorage.setItem("isLoggedIn", "true");
//             window.location.href = "index.html";
//         } else {
//             document.getElementById("loginMsg").innerText = "Invalid credentials ❌";
//         }
//     });
// }

// // REGISTER
// const registerForm = document.getElementById("registerForm");

// if (registerForm) {
//     registerForm.addEventListener("submit", function(e) {
//         e.preventDefault();

//         const username = document.getElementById("regUsername").value;
//         const password = document.getElementById("regPassword").value;

//         localStorage.setItem("user", JSON.stringify({ username, password }));

//         document.getElementById("registerMsg").innerText = "Registered successfully ✅";
//     });
// }

// // PROTECT PAGES
// if (window.location.pathname.includes("index.html") ||
//     window.location.pathname.includes("schedule.html") ||
//     window.location.pathname.includes("route.html") ||
//     window.location.pathname.includes("report.html")) {

//     const isLoggedIn = localStorage.getItem("isLoggedIn");

//     if (!isLoggedIn) {
//         window.location.href = "login.html";
//     }
// }