$(document).on('turbolinks:load', function() {

  $('#book-rating').barrating({
    theme: 'fontawesome-stars',
  onSelect: function(value, text, event) {
    if (typeof(event) !== 'undefined') {
      // rating was selected by a user
      console.log($(event.target).data('rating-value'));
    } else {
      // rating was selected programmatically
      // by calling `set` method
    }
  }
  });

})
