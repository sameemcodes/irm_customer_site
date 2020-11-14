window.onload = function() {customer_render()};

function customer_render() {

	var select = document.getElementById("customer-select");
	var imported_data = document.getElementById("imported_data");

	for(index in customer_data) {
    if (index != 'user_name' && index != 'user_email' && index != 'customer_select_id'){
        select.options[select.options.length] = new Option(customer_data[index], index);
    }

    else if (index == 'customer_select_id'){
			if(customer_data[index] != -1){
				$('#customer-select').prop('selectedIndex', customer_data[index])
			}
			else{
				console.log("No Preference Found");
			}

    }

    else if (index == 'user_name'){
      $("#user_name").html(customer_data[index]);
    }
		else{
			console.log(customer_data[index]);
			console.log(index);

		}

	}

	$.each(user_data_list, function(index, val) {
		imported_data.options[imported_data.options.length] = new Option(val, index);
	});


}

$(document).ready(function () {
  $("#customer-select").change(function () {
    var e = document.getElementById("customer-select");
    var value = e.options[e.selectedIndex].value;

    $.ajax({
      url: "",
      type: "get", // or "get"
      data: {"customer_select_id" : value},
      headers: { "X-CSRFToken": "{{ csrf_token }}" }, // for csrf token
      success: function (data) {
        console.log(data);
        window.location.href = '/irm_dashboard/'
        // if (data.language == "Arabic"){
        //   $("customer-select").val("Arabic");
        //
        // }
        // else if (data.language == "English") {
        //   $("customer-select").val("English");
        //
        // }

      },
    });
  });
});
