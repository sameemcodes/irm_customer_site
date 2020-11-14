(function ($) {
    "use strict";
	
	
	
	/*==================================================================*/

	
    /*==================================================================
    [ Validate ]*/
    var input = $('.card-body .form-control');

    $('.card-primary').on('submit',function(event){
        var check = true;
		alert("lala")

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                
                check=false;
				 event.preventDefault();
            }
        }
		
		if (check){
			creat_new_customer(input)
		}
		else{event.preventDefault();}

       
    });
	/*==================================================================*/

    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });
	/*==================================================================*/
	
	function creat_new_customer(input) {
		alert("Check Successfull. Log in attempt...");
		
		var Cust_name = $(input[0]).val()
		var Cust_comp_add = $(input[1]).val()
		var Depl_type = $(input[2]).val()
		var source_ERP = $(input[3]).val()
		var Cust_region = $(input[4]).val()
		var Cust_prm_cntct = $(input[5]).val()
		var Cust_prm_cntct_email = $(input[6]).val()
		var Engmnt_type = $(input[7]).val()
		var linsce = $(input[8]).val()
		var Cust_emp_cnt = $(input[9]).val()
		var Cust_prm_cntct_desg = $(input[10]).val()
		
		alert('Cust_name: ' + Cust_name);
		alert('Cust_comp_add: ' + Cust_comp_add);
		alert('Depl_type: ' + Depl_type);
		alert('Cust_region: ' + Cust_region);
		alert('Cust_prm_cntct: ' + Cust_prm_cntct);
		alert('Cust_prm_cntct_email: ' + Cust_prm_cntct_email);
		alert('Engmnt_type: ' + Engmnt_type);
		alert('Cust_emp_cnt: ' + Cust_emp_cnt);
		alert('Cust_prm_cntct_desg: ' + Cust_prm_cntct_desg);
		alert('linsce: ' + linsce);
		alert('source_ERP: ' + source_ERP);
		
		/*$.ajax(
                url: 'http://127.0.0.1:8000/test',
                data:{
                  a: JSON.stringify(username),
                  b: JSON.stringify(pass)
                },
                dataType: 'JSON',
                type: 'GET',
                success: function(data){
                
                }
                });*/
		
	}

    /*==================================================================*/
    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null || $(input).val().trim() == '') {
                var field = $(input).attr('placeholder')
				alert(field+ " is incorrect!")
				showValidate(input);
				return false;
            }}
        
		
        else {
            if($(input).val().trim() == ''){
				var field = $(input).attr('placeholder')
				alert(field+ " cannot be empty!")
				showValidate(input);
                return false;
            }
			else{
				
				var id = $(input).attr('id')
				var tag = document.getElementById(id).tagName
				if(tag == 'INPUT'){
				
					hideValidate(input);
				}
				
				
            }
			
        }
    }
	
	/*==================================================================*/

    function showValidate(input) {
        //var thisAlert = $(input).style();
		var thisAlert = $(input).attr('id')
		document.getElementById(thisAlert).style.borderColor = "red";
        
    }

    function hideValidate(input) {
       
	   var thisAlert = $(input).attr('id')
	   document.getElementById(thisAlert).style.borderColor = "grey";
    }
	/*==================================================================*/
	
    
    /*==================================================================
    [ Show pass ]*/
    var showPass = 0;
    $('.btn-show-pass').on('click', function(){
        if(showPass == 0) {
            $(this).next('input').attr('type','text');
            $(this).find('i').removeClass('fa-eye');
            $(this).find('i').addClass('fa-eye-slash');
            showPass = 1;
        }
        else {
            $(this).next('input').attr('type','password');
            $(this).find('i').removeClass('fa-eye-slash');
            $(this).find('i').addClass('fa-eye');
            showPass = 0;
        }
        
    });
    

})(jQuery);