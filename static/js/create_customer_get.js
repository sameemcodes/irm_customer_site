window.onload = function() {createCustGet()};

function createCustGet() {

  var reg = document.getElementById("reg");
  var cmp_cnt_desg = document.getElementById("cmp_cnt_desg");
  var devel_type = document.getElementById("dlp_typ");
  var eng_typ = document.getElementById("eng_typ");
  var cust_ERP = document.getElementById("cust_ERP");
  var mdl_lncs = document.getElementById("mdl_lncs");

  for(key in master_type_desc) {
    $.each(master_type_desc[key] , function(index, val) {

      if (key == 'Region'){
          reg.options[reg.options.length] = new Option(val, val);
      }

      else if (key == 'Designation'){
          cmp_cnt_desg.options[cmp_cnt_desg.options.length] = new Option(val, val);
      }

      else if (key == 'Deployment Type'){
          devel_type.options[devel_type.options.length] = new Option(val, val);
      }

      else if (key == 'Engagement Type'){
          eng_typ.options[eng_typ.options.length] = new Option(val, val);
      }

      else if (key == 'Source ERPs'){
          cust_ERP.options[cust_ERP.options.length] = new Option(val, val);
      }
      else{
        console.log("Key Error!");
      }
    });


	}


  for(key in module_names){
    mdl_lncs.options[mdl_lncs.options.length] = new Option(key, key);
  }

  $("#user_name").html(user_name);


}
