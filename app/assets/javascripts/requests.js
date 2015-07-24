$(document).ready(function(){
  $('.report_term_input').val(function() {
    $(this).data().select2.updateSelection( $(this).data('init') )
  });
  $('.report_term_input').select2({
    ajax: {
      url: '/application_roles/index.json',
      type: 'GET',
      dataType: 'json',
      data: function (term) {
        return {
          term: term
        };
      },
      results: function (data) {
        return {
          results: $.map(data, function(item) {
            return {
              text: item.text,
              id: item.id
            }
          })
        }
      }
    },
    multiple: true,
    width: "500px"
  });
});