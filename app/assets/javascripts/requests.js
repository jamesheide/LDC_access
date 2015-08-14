$('.home.index').ready(function(){
  // global object
  store = new Persist.Store('My Application', {
    expires: 1
  });
  // load persistent store after the DOM has loaded
  $('#new-request').click( function() {
    if($.trim($('#netid-input').val()) != '') {    
      store.set('netid', $('#netid-input').val());
      alert(store.get('netid'))
    }
    else {
      alert('hey, you need to select a net id before you can make a request');
      return false;
    }
  });
});

$('.requests.new').ready(function() {
  var store = new Persist.Store('My Application', {
    expires: 1
  });

  var netid = store.get('netid')

  $('#current-access-name').html('<h1>Current Access for ' + netid + '</h1>');

  $.getJSON('/current_access/my_apps/' + netid, function(data) {
    $('#current-apps').empty();
    $.each(data, function(index) {
      $('#current-apps').append(
        '<li>' + data[index].role + '</li>'
      )
    });
  });
  $.getJSON('/application_roles/index.json', function(data) {
    $.each(data, function(index) {
      $('.application-role-input').append(
        '<option value="' + data[index].id + '">' + data[index].text + '</option>'
      )
    });
  });
  $('.application-role-input').select2();
});