$("#darkmode").click(function() {
	if ($.cookie("mode") == "dark") {
		$("body").removeClass("dark");
		$.cookie("mode", null);
	} else {
		$("body").addClass("dark");
		$.cookie("mode", "dark", {
			expires : 30,
			path : '/'
		})
	}
});

if ($.cookie("mode") == "dark") {
	$("body").addClass("dark");
}
$('input[type="checkbox"]').prop('checked', ($.cookie("mode") == "dark"));

$(document)
		.ready(
				function() {
					$('#datatableContact')
							.DataTable(
									{
									"language" : {
											"sEmptyTable" : "Aucune donnée disponible dans le tableau",
											"sInfo" : "Affichage de l'élément _START_ à _END_ sur _TOTAL_ éléments",
											"sInfoEmpty" : "Affichage de l'élément 0 à 0 sur 0 élément",
											"sInfoFiltered" : "(filtré à partir de _MAX_ éléments au total)",
											"sInfoPostFix" : "",
											"sInfoThousands" : ",",
											"sLengthMenu" : "Afficher _MENU_ éléments",
											"sLoadingRecords" : "Chargement...",
											"sProcessing" : "Traitement...",
											"sSearch" : "Rechercher :",
											"sZeroRecords" : "Aucun élément correspondant trouvé",
											"oPaginate" : {
												"sFirst" : "Premier",
												"sLast" : "Dernier",
												"sNext" : "Suivant",
												"sPrevious" : "Précédent"
											},
											"oAria" : {
												"sSortAscending" : ": activer pour trier la colonne par ordre croissant",
												"sSortDescending" : ": activer pour trier la colonne par ordre décroissant"
											},
											"select" : {
												"rows" : {
													"_" : "%d lignes sélectionnées",
													"0" : "Aucune ligne sélectionnée",
													"1" : "1 ligne sélectionnée"
												}
											}
										}

									});
				});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#imgphoto').attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}

$("#photofile").change(function() {
	readURL(this);
});
$('#imgphoto').click(function() {
	$('#photofile').trigger('click');
});

$('#removephoto').click(function() {
	$('#photo').val("");
	$('#imgphoto').attr('src', './ressources/img/contact_avatar/0.png');
});