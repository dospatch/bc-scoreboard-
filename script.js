 let allPlayers = [];

window.addEventListener("message", function(event) {

    const data = event.data;

    if (!data || !data.action) return;


    // Open / Close Scoreboard
    if (data.action === "toggle") {

        const scoreboard = document.getElementById("scoreboard");

        scoreboard.classList.toggle(
            "hidden",
            !data.state
        );

    }



    // Update Scoreboard Data
    if (data.action === "update") {


        allPlayers = data.players || [];


        document.getElementById("players").innerText =
            "Players Online: " + (data.count || 0);



        document.getElementById("police").innerText =
            data.jobs?.police || 0;


        document.getElementById("ems").innerText =
            data.jobs?.ambulance || 0;


        document.getElementById("fire").innerText =
            data.jobs?.fire || 0;



        renderPlayers(allPlayers);

    }

});





function escapeHTML(text){

    return String(text)
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;")
        .replace(/'/g, "&#039;");

}






function renderPlayers(players){


    const table =
        document.getElementById("playerTable");


    table.innerHTML = "";



    players.sort((a,b)=>a.id-b.id);



    players.forEach(player => {



        let staff = "";


        if(player.staff){

            staff =
                `${player.staff.icon || ""} 
                ${escapeHTML(player.staff.name || "")}`;

        }



        let row = document.createElement("tr");



        row.innerHTML = `

            <td>${player.id}</td>

            <td>${escapeHTML(player.name)}</td>

            <td>
                ${player.icon || ""}
                ${escapeHTML(player.job || "Civilian")}
            </td>

            <td>
                ${staff}
            </td>

            <td>
                ${player.ping || 0}ms
            </td>

        `;



        table.appendChild(row);



    });


}






// Player Search

document
.getElementById("searchPlayers")
.addEventListener("input", function(){


    let value =
        this.value.toLowerCase();



    let filtered =
        allPlayers.filter(player => {


            return (

                player.name
                .toLowerCase()
                .includes(value)

                ||

                String(player.id)
                .includes(value)

                ||

                player.job
                .toLowerCase()
                .includes(value)

            );


        });



    renderPlayers(filtered);


});