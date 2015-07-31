$(document).ready(function(){
  $.getJSON('/application_roles/index.json', function(data) {
    $.each(data, function(index) {
      $('.application_role_input').append(
        '<option value="' + data[index].id + '">' + data[index].text + '</option>'
      )
    });
  });
  $('.application_role_input').select2();
  
  $('.new_org_input').select2({
    tags: true,
    dropdownCssClass: 'select2-hidden'
  });
});