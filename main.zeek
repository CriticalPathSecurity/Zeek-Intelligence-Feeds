##! Load Intel Framework
@load policy/integration/collective-intel
@load policy/frameworks/intel/seen
@load policy/frameworks/intel/do_notice
redef Intel::read_files += {
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/abuse-ch-ipblocklist.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/abuse-ch-malware.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/abuse-ch-urlhaus.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/alienvault.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/binarydefense.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/compromised-ips.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/cps-collected-iocs.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/dom-bl.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/filetransferportals.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/illuminate.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/openphish.intel",
#	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/predict_intel.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/rutgers.intel",
	"/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds/tor-exit.intel",
};
