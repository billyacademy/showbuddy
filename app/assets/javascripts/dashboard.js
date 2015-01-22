$(function() {
  var $invites = $('#invites')
  var $responses = $('#responses')
  var $matches = $('#confirmations')
  var $rejections = $('#rejections')
  var $dash = $('#dash-content')

  var $invitesContent = $('#invites-content')
  var $responsesContent = $('#response-content')
  var $matchesContent = $('#match-content')
  var $rejectionsContent = $('#rejection-content')
  var $dashContent = $('#dash-content')

  $invitesContent.hide();
  $responsesContent.hide();
  $matchesContent.hide();
  $rejectionsContent.hide();

  $invites.on("click", function(event) {
    event.preventDefault();
    $invitesContent.toggle();
    $responsesContent.hide();
    $matchesContent.hide();
    $rejectionsContent.hide();
    $dashContent.hide();
  });

  $responses.on("click", function(event) {
    event.preventDefault();
    $responsesContent.toggle();
    $invitesContent.hide();
    $matchesContent.hide();
    $rejectionsContent.hide();
    $dashContent.hide();
  });

  $matches.on("click", function(event) {
    event.preventDefault();
    $matchesContent.toggle();
    $responsesContent.hide();
    $invitesContent.hide();
    $rejectionsContent.hide();
    $dashContent.hide();
  });

  $rejections.on("click", function(event) {
    event.preventDefault();
    $responsesContent.hide();
    $matchesContent.hide();
    $invitesContent.hide();
    $dashContent.hide();
    $rejectionsContent.toggle();

  $dash.on("click", function(event) {
    event.preventDefault();
    $rejectionsContent.hide();
    $responsesContent.hide();
    $matchesContent.hide();
    $invitesContent.hide();
    $dashContent.toggle();
    });
  });
});
