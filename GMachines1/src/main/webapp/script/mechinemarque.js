$(document).ready(function () {
    $.ajax({
        success: function (data, textStatus, jqXHR) {
          
        }
    });

    $("#add").click(function() {
		var marque = ($("#select option:selected").text());
		$.ajax({
			url: "MachineMarqueController",
			data: { marque: marque },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				
				console.log(textStatus);
			}
		});


	});

    function remplir(data) {
        var ligne = "";
        for (var i = 0; i < data.length; i++) {
            ligne += "<tr><td>" + data[i].id + "</td><td>" + data[i].reference + "</td><td>" + data[i].dateAchat + "</td><td>" + data[i].prix + "</td><td>" + data[i].marque.libelle + "</td></tr>";
        }
        $("#listMachines").html(ligne);
    }

});





