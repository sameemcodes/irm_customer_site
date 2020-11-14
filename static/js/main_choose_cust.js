
window.onload = function() {myFunction()};

function myFunction() {

	var customer_dict = JSON.parse("{{ customer_dict|safe }}");

	var example_array = {
    ValueA : 'TATA',
    ValueB : 'SAIL',
    ValueC : 'PWC',
		ValueD : 'JP MORGEN',
		ValueE : 'BMW'

	};

	var select = document.getElementById("customer-select");
	for(index in customer_dict) {
    select.options[select.options.length] = new Option(customer_dict[index], index);
	}


}
