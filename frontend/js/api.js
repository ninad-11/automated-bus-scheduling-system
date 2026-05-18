function createDuty(data) {
    fetch("http://localhost:3000/api/create-duty", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })
    .then(res => res.json())
    .then(result => {
        document.getElementById("message").innerText = result.message;
    })
    .catch(err => {
        console.error("Error:", err);
        document.getElementById("message").innerText = "Error creating duty!";
    });
}
