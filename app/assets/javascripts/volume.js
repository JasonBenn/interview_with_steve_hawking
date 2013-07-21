var volumeOn = function(){
  document.getElementById('background_audio').muted = false;
  $('#volume').html('<a href="#" onclick="volumeOff" ><i class="icon-volume-off"></i> Volume Off</a>')
}
var volumeOff = function(){
  document.getElementById('background_audio').muted = true;
  $('#volume').html('<a href="#" onclick="volumeOn" ><i class="icon-volume-up"></i> Volume On</a>')
}
