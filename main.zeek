##! Load Intel Framework
@load policy/integration/collective-intel
@load policy/frameworks/intel/seen
@load policy/frameworks/intel/do_notice
redef Intel::read_files += {
	cat(@DIR, "/abuse-ch-ipblocklist.intel"),
	cat(@DIR, "/alienvault.intel"),
	cat(@DIR, "/binarydefense.intel"),
	cat(@DIR, "/compromised-ips.intel"),
	cat(@DIR, "/covid.intel"),
	cat(@DIR, "/dom-bl.intel"),
	cat(@DIR, "/openphish.intel"),
	cat(@DIR, "/predict_intel.intel"),
	cat(@DIR, "/rutgers.intel"),
	cat(@DIR, "/tor-exit.intel")
};
