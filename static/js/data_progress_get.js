window.onload = function() {createCustGet()};

function createCustGet() {
  // vanilla JS version
  document.addEventListener("#progress-log", function () {
    console.log('Lalalalala');
    var progressUrl = "{% url 'celery_progress:task_status' task_id %}";
    CeleryProgressBar.initProgressBar(progressUrl);
  });
}
