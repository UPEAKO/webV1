function circle() {
    canvas.clearRect(0, 0, width, height);
    canvas.beginPath();
    canvas.lineWidth = 0.2;
    canvas.strokeStyle = "#eb1215"
    for (var i = 0; i < 333; i++) {
        var ranX1 = Math.random() * width;
        var ranY1 = Math.random() * height;
        var ranX2 = Math.random() * 15;
        var ranY2 = Math.random() * 15;
        canvas.moveTo(ranX1, ranY1);
        canvas.lineTo(ranX1+ranX2, ranY1+ranY2);
    }
    canvas.stroke();
}

var item = document.getElementById("game1");
var canvas = item.getContext("2d");
var width = item.width;
var height = item.height;
setInterval(circle, 500);
