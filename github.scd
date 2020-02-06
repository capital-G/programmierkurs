s.boot;

NetAddr.localAddr;

(
OSCdef(\pythonTest, {|msg|
	var pythonNumber;
	pythonNumber = msg[1].asInteger;
	pythonNumber.postln;
}, '\pythonTest');
)

(
OSCdef(\pythonNumber, {|msg|
	var pythonNumber;
	pythonNumber = msg[1].asInteger;
	{
		SinOsc.ar(pythonNumber, 0.0, EnvGen.kr(Env.linen(sustainTime: 0.2, releaseTime: 0.1), doneAction: Done.freeSelf));
	}.play;
}, '/pythonNumber');
)
