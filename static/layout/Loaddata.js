
window.onload = function() {loadData()};

function loadData() {
	
	load_deployment_type()
	load_engagement_type()
	load_region()
	load_degisnation()

	
}

	
		



function load_deployment_type() {
	
	var example_array = {
    ValueA : 'Shared Public Cloud -AWS',
    ValueB : 'Shared Public Cloud - Azure',
    ValueC : 'Private Schema - AWS',
	ValueD : 'Local Installation'
		};

	var select = document.getElementById("dlp_typ");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
	
	
}


function load_engagement_type() {
	
	var example_array = {
		1 : 'Internal Audit',
		2 : 'External Audit',
		3 : 'Managed Services'
		};

	var select = document.getElementById("eng_typ");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
	
	
}

function load_region() {
	
	var example_array = {
    ValueA : 'Alaska',		
    ValueB : 'California',	
    ValueC : 'Delaware',	
	ValueD : 'Tennessee',	
	ValueE : 'Texas',
	ValueF : 'Washington'	
	};

	var select = document.getElementById("reg");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
}


function load_degisnation() {
	
	var example_array = {
    ValueA : 'CTO',		
    ValueB : 'CFO',	
    ValueC : 'CIO',	
	ValueD : 'GM Finance',	
	ValueE : 'Others'	
	};

	var select = document.getElementById("cmp_cnt_desg");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
}

