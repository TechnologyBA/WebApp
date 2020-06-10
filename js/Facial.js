$(document).ready(function () {
    Webcam.set({
    width: 520,
    height: 400,
    image_format: 'jpeg',
    jpeg_quality: 120
    });
    Webcam.attach('#my_camera');
});

function take_snapshot() {
    Webcam.snap(function (data_uri) {
        //$(".image-tag").val(data_uri);
        $('#Image1').attr('src', data_uri);
        //document.getElementById('Image1').innerHTML = '<img src="' + data_uri + '"/>';
        alert(data_uri);
    });
}
