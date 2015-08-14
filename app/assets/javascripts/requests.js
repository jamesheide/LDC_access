$(document).ready(function(){
  $.getJSON('/application_roles/index.json', function(data) {
    $.each(data, function(index) {
      $('.application-role-input').append(
        '<option value="' + data[index].id + '">' + data[index].text + '</option>'
      )
    });
  });
  $('.application-role-input').select2();
});