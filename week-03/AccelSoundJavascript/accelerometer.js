
function Accelerometer(){
	
	accelerometer =  {
		acceleration : new Array(),
		getValues : function(){return this.acceleration;},
		getX      : function(){return this.acceleration[0];},
		getY      : function(){return this.acceleration[1];},
		getZ      : function(){return this.acceleration[2];}
	}
	
	accelerometer.acceleration[0] = 0.0;
	accelerometer.acceleration[1] = 0.0;
	accelerometer.acceleration[2] = 0.0;
	

	if (window.DeviceOrientationEvent) {
        window.addEventListener('deviceorientation', function(event) {

		accelerometer.acceleration[0] = event.beta;
		accelerometer.acceleration[1] = event.gamma;
		accelerometer.acceleration[2] = event.alpha;

        }, true);
    } else if (window.DeviceMotionEvent) {
        window.addEventListener('devicemotion', function(event) {
          sketch.mode = 2;  
        accelerometer.acceleration[0] = event.acceleration.x;
		accelerometer.acceleration[1] = event.acceleration.y;
		accelerometer.acceleration[2] = event.acceleration.z;
        }, true);
    } else{
   
        window.addEventListener('MozOrientation', function(orientation) {
          sketch.mode = 3;  
          accelerometer.acceleration[0] = event.orientation.x;
		  accelerometer.acceleration[1] = event.orientation.y;
		  accelerometer.acceleration[2] = event.orientation.z;

        }, true);
    }

	
	return accelerometer;
}
