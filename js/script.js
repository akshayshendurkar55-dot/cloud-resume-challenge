async function loadVisitorCount() {
    const counter = document.getElementById("visitor-count");

    try {
        const response = await fetch(
            "https://oyizfuf1ui.execute-api.us-east-1.amazonaws.com/prod/visitors"
        );

        if (!response.ok) {
            throw new Error("Failed to fetch visitor count");
        }

        const data = await response.json();

        counter.textContent = data.count;

    } catch (error) {
        console.error("Visitor counter error:", error);

        counter.textContent = "—";
    }
}


document.addEventListener("DOMContentLoaded", loadVisitorCount);