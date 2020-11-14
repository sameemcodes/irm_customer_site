
$(function () {
  $.ajaxSetup({
      headers: { "X-CSRFToken": getCookie("csrftoken") }
  });
});
function getCookie(c_name)
  {
      if (document.cookie.length > 0)
      {
          c_start = document.cookie.indexOf(c_name + "=");
          if (c_start != -1)
          {
              c_start = c_start + c_name.length + 1;
              c_end = document.cookie.indexOf(";", c_start);
              if (c_end == -1) c_end = document.cookie.length;
              return unescape(document.cookie.substring(c_start,c_end));
          }
      }
      return "";
   }

   $(document).ready(function(){
     $("#customer_reg_form").submit(function(e){
       // prevent from normal form behaviour
          e.preventDefault();
          // serialize the form data
          //[ Validate ]*
          var serializedData = $(this).serialize();

          login(serializedData)
     });
  });

function login(serializedData){
  $.ajax({
    type : 'POST',
    url :  $(this).data('url'),
    data : serializedData,
    success : function(response){
      console.log(url, "hey ya")
      //reset the form after successful submit
      $("#customer_reg_form")[0].reset();
      alert("New Customer Added Successfully");
      window.location.href = '/customer_selection/'
    },
    error : function(response){
      //console.log(response)
      alert("Database Error! Check logs in disk")
      $("#customer_reg_form")[0].reset();
    }
  });
}
