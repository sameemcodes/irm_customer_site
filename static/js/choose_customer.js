window.onload = function() {customer_render()};

function customer_render() {

	var select = document.getElementById("customer-select");
	for(index in customer_data) {
    if (index != 'user_name' && index != 'user_email'){
        select.options[select.options.length] = new Option(customer_data[index], index);
    }
		else{
			console.log(customer_data[index]);
			console.log(index);

			$("#user_name").html(customer_data[index]);
		}

	}


}
