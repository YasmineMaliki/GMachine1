$(document).ready(function () {
    $.ajax({
        url : "MachineController",
        data:{op:"load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
        }
    });

	$.ajax({
			url: "MachineController",
			data: { op: "loadMarque" },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplirMarque(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
	
				console.log(textStatus);
			}
	});

    $("#add").click(function() {
	  $("#message").attr("hidden",true);
		var id = $("#id").val();
		var reference = $("#reference").val();
		var dateAchat = $("#dateAchat").val();
		var prix = $("#prix").val();
		var marque = ($("#select option:selected").text());
		$.ajax({
			url: "MachineController",
			data: { reference: reference, dateAchat: dateAchat, prix: prix, marque: marque, id:id },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				console.log(data);
				if(data.type=="0"){
					$("#message").attr("hidden",false);
					remplirReference(data);
				}
				else{
					remplir(data);
				}
				
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
		$("#id").val("");
	    $("#reference").val("");
		$("#dateAchat").val("");
		$("#prix").val("");

	});
	
   

 	$("#tableContent").on('click', '#delete', function() {
		$.ajax({
			url: "MachineController",
			data: { op: "delete", id: $(this).attr('indice') },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});

	});
	
	function formatDate(date) {
		var d = new Date(date),
			month = '' + (d.getMonth() + 1),
			day = '' + d.getDate(),
			year = d.getFullYear();

		if (month.length < 2)
			month = '0' + month;
		if (day.length < 2)
			day = '0' + day;

		return [year, month, day].join('-');
	}
	
	$("#tableContent").on('click', '#update', function() {
		
		$("#id").val(($(this).attr('indice1')));
		$("#reference").val(($(this).attr('indice2')));
		$("#dateAchat").val(formatDate($(this).attr('indice3')));
		$("#prix").val(($(this).attr('indice4')));
		$("#select").val(($(this).attr('indice5')));
	});
	
    function remplir(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += "<tr id=\"ligne" + i + "\"><td class=\"py-1\ id=\"id\">" + data[i].id + "</td><td>" + data[i].reference + "</td><td>" + data[i].dateAchat + "</td><td>" + data[i].prix + "</td><td>" + data[i].marque.libelle + "</td><td><button type=\"button\" indice1=\"" + data[i].id + "\" indice2=\"" + data[i].reference + "\" indice3=\"" + data[i].dateAchat + "\" indice4=\"" + data[i].prix + "\" indice5=\"" + data[i].marque.libelle + "\" class=\"btn btn-primary modifier\" id=\"update\">Modifier</button>  <button indice=\"" + data[i].id + "\"  type=\"button\" class=\"btn btn-primary supprimer\" id=\"delete\"> Supprimer</button></td><td></tr>";
		}
		$("#listeMachine").html(ligne);
	}
	function remplirReference(data) {
		var ligne = "";
		for (var i = 0; i < data.machine.length; i++) {
			ligne += "<tr id=\"ligne" + i + "\"><td class=\"py-1\ id=\"id\">" + data.machine[i].id + "</td><td>" + data.machine[i].reference + "</td><td>" + data.machine[i].dateAchat + "</td><td>" + data.machine[i].prix + "</td><td>" + data.machine[i].marque.libelle + "</td><td><button type=\"button\" indice1=\"" + data.machine[i].id + "\" indice2=\"" + data.machine[i].reference + "\" indice3=\"" + data.machine[i].dateAchat + "\" indice4=\"" + data.machine[i].prix + "\" indice5=\"" + data.machine[i].marque.libelle + "\" class=\"btn btn-primary modifier\" id=\"update\">Modifier</button>  <button indice=\"" + data.machine[i].id + "\"  type=\"button\" class=\"btn btn-primary supprimer\" id=\"delete\"> Supprimer</button></td><td></tr>";
		}
		$("#listeMachine").html(ligne);
	}
	function remplirMarque(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += "<option>" + data[i].libelle + "</option>";
		}
		$("#select").html(ligne);
	}

});


