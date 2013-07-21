$(document).ready(function() {
  window.URL = window.URL || window.webkitURL;
  navigator.getUserMedia  = navigator.getUserMedia ||
                           navigator.webkitGetUserMedia ||
                            navigator.mozGetUserMedia ||
                             navigator.msGetUserMedia;

  $('recordbutton').click(startRecording)
  function startRecording() {
      streamRecorder = webcamstream.record();
      setTimeout(stopRecording, 10000);
  }
  function stopRecording() {
      streamRecorder.getRecordedData(postVideoToServer);
  }
  function postVideoToServer(videoblob) {

      var data = {};
      data.video = videoblob;
      data.metadata = 'test metadata';
      data.action = "upload_video";
      // jQuery.post("http://www.foundthru.co.uk/uploadvideo.php", data, onUploadSuccess);
  }
  function onUploadSuccess() {
      alert ('video uploaded');
  }

  var video = document.querySelector('video');
  var streamRecorder;
  var webcamstream;

  if (navigator.getUserMedia) {
    navigator.getUserMedia({audio: true, video: true}, function(stream) {
      video.src = window.URL.createObjectURL(stream);
      webcamstream = stream;
  //  streamrecorder = webcamstream.record();
    });
  } else {
      alert ('failed');
  }
})
