##! Load Intel Framework
@load policy/integration/collective-intel
@load policy/frameworks/intel/seen
@load policy/frameworks/intel/do_notice
redef Intel::read_files += {
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/abuse-ch-ipblocklist.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/alienvault.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/compromised-ips.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/covid.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/dom-bl.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/openphish.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/predict_intel.intel"
};
