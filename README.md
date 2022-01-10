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

Mon Jan 10 06:04:00 UTC 2022
