$(document).ready(function () {
    $.ajax({
        url : "MarqueController",
        data:{op:"load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
        }
    });

    $("#add").click(function () {
	$("#message").attr("hidden",true);
		var id = $("#id").val();
        var code = $("#code").val();
        var libelle = $("#libelle").val();
        $.ajax({
            url: "MarqueController",
            data: {code: code, libelle: libelle, id: id },
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                console.log(data);
				if(data.type=="0"){
					$("#message").attr("hidden",false);
					remplirMarque(data);
				}
				else{
					remplir(data);
				}
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });
		$("#id").val("");
	    $("#code").val("");
		$("#libelle").val("");

    });
	$("#tableContent").on('click', '#delete', function() {
		$.ajax({
			url: "MarqueController",
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
	
	$("#tableContent").on('click', '#update', function() {
		$.ajax({
			url: "MarqueController",
			data: { op: "update", id: $(this).attr('indice') },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				$("#main").html(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	
	});

    function remplir(data) {
        var ligne = "";
        for (var i = 0; i < data.length; i++) {
            ligne += "<tr><td>" + data[i].id + "</td><td>" + data[i].code + "</td><td>" + data[i].libelle + "</td><td><td><button indice=\""+data[i].id+"\" type=\"button\" class=\"btn btn-primary modifier\" id=\"update\" >Modifier</button>  <button indice=\""+data[i].id+"\"  type=\"button\" class=\"btn btn-primary supprimer\" id=\"delete\" name=\"delete\">Supprimer</button></td></tr>";
        }
        $("#listeMarque").html(ligne);
    }
	function remplirMarque(data) {
		var ligne = "";
		for (var i = 0; i < data.machine.length; i++) {
			ligne += "<tr id=\"ligne" + i + "\"><td class=\"py-1\ id=\"id\">" + data.machine[i].id + "</td><td>" + data.machine[i].code + "</td><td><button type=\"button\" indice1=\"" + data.machine[i].id + "\" indice2=\"" + data.machine[i].reference + "\" indice3=\"" + data.machine[i].dateAchat + "\" indice4=\"" + data.machine[i].prix + "\" indice5=\"" + data.machine[i].marque.libelle + "\" class=\"btn btn-primary modifier\" id=\"update\">Modifier</button>  <button indice=\"" + data.machine[i].id + "\"  type=\"button\" class=\"btn btn-primary supprimer\" id=\"delete\"> Supprimer</button></td><td></tr>";
		}
		$("#listeMachine").html(ligne);
	}
});


