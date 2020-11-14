window.onload = function() {customer_render()};

function customerSrcErpDynamic(){
	//Onload customer
	var cust_id = $("#customer-select").val();
	var source_mst_ids = cust_global_info[cust_id];

	$.each(source_mst_ids, function(index, val) {
		cust_ERP.options[cust_ERP.options.length] = new Option(master_type_desc[val], val);
	});
}

function customer_render() {

	var customer_select = document.getElementById("customer-select");

	for(index in customer_data) {
    if (index != 'user_name' && index != 'user_email' && index != 'customer_select_id'){
        customer_select.options[customer_select.options.length] = new Option(customer_data[index], index);
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

	customerSrcErpDynamic();
	//On change of customer
	$('#customer-select').change(function() {
    // $(this).val() will work here
		$("#cust_ERP").each(function(index, option) {
    	$(option).empty();
		});

		customerSrcErpDynamic();
	});






}
