$(document).ready(function(){
  $.getJSON('/application_roles/index.json', function(data) {
    $.each(data, function(index) {
      $('.application_role_input').append(
        '<option value="' + data[index].id + '">' + data[index].text + '</option>'
      )
    });
  });
  $('.application_role_input').select2();
  
  var org_data = [{ id: 0, text: '29015' }, { id: 1, text: '29005' }, { id: 2, text: '29010' }, { id: 3, text: '29020' }, { id: 4, text: '29025' }];
  $('.new_org_input').select2({
    data: org_data
  });
});