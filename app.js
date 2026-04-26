const serviceData = [
    { time: "09:00", element: "Prolog Video", details: "Countdown 5 min", duration: "5:00" },
    { time: "09:05", element: "Worship: Is He Worthy", details: "Key: G", duration: "6:30" },
    { time: "09:12", element: "Anunțuri", details: "Slide-uri evenimente", duration: "3:00" }
];

function loadService() {
    const tableBody = document.getElementById('service-items');
    tableBody.innerHTML = serviceData.map(item => `
        <tr>
            <td>${item.time}</td>
            <td style="font-weight:600">${item.element}</td>
            <td style="color:#666">${item.details}</td>
            <td>${item.duration}</td>
        </tr>
    `).join('');
}

window.onload = loadService;