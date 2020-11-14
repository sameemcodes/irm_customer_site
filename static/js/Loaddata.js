
window.onload = function() {loadData()};

function loadData() {
	
	load_deployment_type()
	load_engagement_type()
	load_region()
	load_degisnation()
	load_sourceerp()
	load_modlinse()

	
}

	


function load_sourceerp() {
	
	var example_array = {
    1 : 'Oracle',
    2 : 'SAP'
		};

	var select = document.getElementById("cust_ERP");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
	
	
}

function load_modlinse() {
	
	var example_array = {
    1 : 'SOD',
    2 : 'ABC',
    3 : 'ITGC'
		};

	var select = document.getElementById("mdl_lncs");
	for(index in example_array) {
    select.options[select.options.length] = new Option(example_array[index], index);
	}
	
	
}







function load_deployment_type() {
	
	var example_array = {
    1 : 'Shared Public Cloud -AWS',
    2 : 'Shared Public Cloud - Azure',
    3 : 'Private Schema - AWS',
	4 : 'Local Installation'
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
    1 : 'Alaska',		
    2 : 'California',	
    3 : 'Delaware',	
	4 : 'Tennessee',	
	5 : 'Texas',
	6 : 'Washington'	
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

