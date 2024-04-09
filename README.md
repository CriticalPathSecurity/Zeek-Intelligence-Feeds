<h1 align="center">

[![Critical Path Security Logo](https://www.criticalpathsecurity.com/wp-content/uploads/2020/09/CPS-LOGO-RESIZE.png)](https:://www.criticalpathsecurity.com)

</h1>

# Zeek Intel Threat Feed w/ Combined Indicators

This is a public feed based on Public Threat Feeds and CRITICAL PATH SECURITY gathered data.
This feed will be updated as often as possible.

## Getting Started

These instructions will get you a copy of the project up and running.

### Dependencies

* ZEEK 3.0 or greater

### Installing

Install Zeek Dependencies

```

sudo apt-get install cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev

```

Clone the repository into `/opt`

```
cd /opt
git clone --recursive https://github.com/zeek/zeek
./configure && make && sudo make install
```

Install Zeek
```

./configure && make && sudo make install

```

## Install the Threat Intelligence Feeds

Clone the repository into `/usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds`

```
cd /opt
git clone https://github.com/CriticalPathSecurity/Zeek-Intelligence-Feeds.git /usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds
echo "@load Zeek-Intelligence-Feeds" >> /usr/local/zeek/share/zeek/site/local.zeek
```

## Usage

Navigate to `/usr/local/zeek/bin/`

```
./zeekctl deploy
```

### Scheduling Updates

A simple bash script can be used for updates.  An example is shown below.

```
vi /opt/zeek_update.sh
```

Add the following:

```
#!/bin/sh
cd /usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds && git fetch origin master
git reset --hard FETCH_HEAD
git clean -df
```

Make the script executable.
```
chmod +x /opt/zeek_update.sh
```

Make the following cron entry for 24 hour updates.
```
5 * * * * sh /opt/zeek_update.sh >/dev/null 2>&1
```

Logs will be written to:

```
/usr/local/zeek/logs/current/intel.log
```
Sources:

Filename | Provider  | Homepage                         | List URL                       | License/TOU                      |
|-----------|-----------|----------------------------------|--------------------------------|----------------------------------|
| Amnesty_NSO_Domains.intel | Amnesty NSO Domains | https://github.com/AmnestyTech/investigations | https://github.com/AmnestyTech/investigations/tree/master/2021-07-18_nso | Not Defined |
| abuse-ch-ipblocklist.intel | Abuse.CH Blacklist | https://sslbl.abuse.ch/blacklist/ | https://sslbl.abuse.ch/blacklist/ | https://sslbl.abuse.ch/blacklist/ |
| abuse-ch-malware.intel | Abuse.CH Malware | https://bazaar.abuse.ch/ | https://bazaar.abuse.ch/ | https://bazaar.abuse.ch/ |
| abuse-ch-threatfox-ip.intel | Abuse.CH ThreatFox | https://threatfox.abuse.ch/ | https://threatfox.abuse.ch/ | https://threatfox.abuse.ch/ |
| abuse-ch-urlhaus.intel | Abuse.CH URLHaus | https://urlhaus.abuse.ch/ | https://urlhaus.abuse.ch/ | https://urlhaus.abuse.ch/ |
| alienvault.intel | AlienVault | https://www.alienvault.com/ | http://reputation.alienvault.com/reputation.data | https://otx.alienvault.com/ |
| binarydefense.intel | Binary Defense | https://www.binarydefense.com/ | https://www.binarydefense.com/banlist.txt | https://www.binarydefense.com/ |
| censys.intel | Censys | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| cobaltstrike_ips.intel | CobaltStrike IP | https://threatview.io/ | https://threatview.io/Downloads/High-Confidence-CobaltStrike-C2%20-Feeds.txt | https://threatview.io/ |
| compromised-ips.intel | Emerging Threats | https://rules.emergingthreats.net/ | https://rules.emergingthreats.net/blockrules/compromised-ips.txt | https://rules.emergingthreats.net/OPEN_download_instructions.html |
| cps-collected-iocs.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| cps_cobaltstrike_domain.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| cps_cobaltstrike_ip.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| ellio.intel | Ellio Tech | https://www.ellio.tech | https://www.ellio.tech  | https://www.ellio.tech  |
| fangxiao.intel | Cyjax | https://www.cyjax.com/ | https://www.cyjax.com/app/uploads/2022/11/fangxiao-a-chinese-threat-actor.txt | https://www.cyjax.com/2022/11/14/fangxiao-a-chinese-threat-actor/ |
| filetransferportals.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| illuminate.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| inversion.intel | Google / Inversion | https://github.com/elliotwutingfeng/Inversion-DNSBL-Blocklists | Github | https://github.com/elliotwutingfeng/Inversion-DNSBL-Blocklists/blob/main/LICENSE |
| lockbit_ip.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| log4j_ip.intel | Multiple Sources | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| openphish.intel | OpenPhish | https://openphish.com | https://openphish.com/feed.txt | https://openphish.com/terms.html |
| predict_intel.intel | Georgia Tech Research Institute (GTRI) | https://www.gatech.edu/ | https://www.gatech.edu/ | https://www.gatech.edu/ |
| ragnar.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| sans.intel | SANS | https://isc.sans.edu/ | https://isc.sans.edu/api/intelfeed | https://isc.sans.edu/data/threatfeed.html |
| scumbots.intel | ScumBots | None | None | Permission given by Paul Melson - Free Usage |
| stalkerware.intel | Critical Path Security | https://www.criticalpathsecurity.com/ | Github | https://www.criticalpathsecurity.com/ |
| tor-exit.intel | Tor Project | https://www.torproject.org/ | https://check.torproject.org/exit-addresses | https://www.torproject.org/ |
Tue Apr  9 11:15:07 UTC 2024
