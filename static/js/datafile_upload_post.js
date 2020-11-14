
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
     $("#dataupload_form").submit(function(e){
       // prevent from normal form behaviour
          e.preventDefault();
          // serialize the form data
          //[ Validate ]*
          //var serializedData = $(this).serialize();
          var form = $(this);
          var formData = new FormData(form[0]);
          alert("Data upload is starting, You will be redirected to the Dashboard when finished!")
          upload_data(formData)
     });
  });

function upload_data(formData){
  $.ajax({
    type : 'POST',
    url :  $(this).data('url'),
    data : formData,
    processData: false,
    contentType: false,

    success : function(response){
      //reset the form after successful submit
      $("#dataupload_form")[0].reset();
      alert("Upload completed, Redirecting to IRM Dashboard")
      window.location.href = '/irm_dashboard/'
    },
    error : function(response){
      console.log(response)
      alert("Sources incompatible!")
      $("#dataupload_form")[0].reset();
    }
  });
}
