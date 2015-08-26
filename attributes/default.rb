default["collectd"]["version"]            = "5.4.1"
default["collectd"]["dir"]                = "/opt/collectd"
default["collectd"]["plugins_conf_dir"]    = ::File.join(node["collectd"]["dir"], "etc", "conf.d")
default["collectd"]["url"]                =  "https://s3.amazonaws.com/collectd-#{node['collectd']['version']}/collectd-#{node['collectd']['version']}.tar.gz "
#"http://collectd.org/files/collectd-#{node["collectd"]["version"]}.tar.gz"
default["collectd"]["checksum"]           = "853680936893df00bfc2be58f61ab9181fecb1cf45fc5cddcb7d25da98855f65"
default["collectd"]["interval"]           = 10
default["collectd"]["read_threads"]       = 5
default["collectd"]["name"]               = node["fqdn"]
default["collectd"]["fqdnlookup"]         = true
default["collectd"]["plugins"]            = Mash.new
default["collectd"]["python_plugins"]     = Mash.new
#default["collectd"]["graphite_role"]      = "graphite"
#default["collectd"]["graphite_ipaddress"] = ""

default["collectd"]["plugins"]["syslog"]["config"]["LogLevel"] = "Info"
default["collectd"]["plugins"]["disk"] = {}
default["collectd"]["plugins"]["swap"] = {}
default["collectd"]["plugins"]["memory"] = {}
default["collectd"]["plugins"]["cpu"] = {}
default["collectd"]["plugins"]["interface"]["config"] = {"Interface" => "lo", "IgnoreSelected" => true}
default["collectd"]["plugins"]["df"]["config"] = {"ReportReserved" => false, 
	"FSType" => [ "proc", "sysfs", "fusectl", "debugfs", "devtmpfs", "devpts", "tmpfs" ],
	"IgnoreSelected" => true
	}
