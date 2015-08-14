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
  $.getJSON('current_access/my_apps/' + store.get('netid'))
  $.getJSON('/application_roles/index.json', function(data) {
    $.each(data, function(index) {
      $('.application-role-input').append(
        '<option value="' + data[index].id + '">' + data[index].text + '</option>'
      )
    });
  });
  $('.application-role-input').select2();
});