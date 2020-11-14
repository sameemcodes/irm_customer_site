
window.onload = function() {myFunction()};

function myFunction() {
	
	var example_array = {
    ValueA : 'TATA',
    ValueB : 'SAIL',
    ValueC : 'PWC',
	ValueD : 'JP MORGEN',
	ValueE : 'BMW'
	
	};

	var select = document.getElementById("example-select");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
	
	
}



