var lg = function(data) {
	console.log(data);
}

function sortByHeight(app) {

	var arrays = [];
	var k = 1;

	var loop = function(a) {
		for (var i=0; i < a.length; i++) {
			lg(i);
			lg(a[i]);
			if (a[i] == -1) {
				arrays[k] = a.splice(0, i);
				b = a.splice(i);
				lg(arrays[k]);
				k += 1;
				loop(b);
			}
			break;
		}
	}

	loop(app);

	return arrays
}

console.log(
sortByHeight([1,2,3,-1,5,6,-1])
);
