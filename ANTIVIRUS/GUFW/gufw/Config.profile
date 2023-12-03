[fwBasic]
status = enabled
incoming = deny
outgoing = deny
routed = disabled

[Rule0]
ufw_rule = 53 ALLOW OUT Anywhere (out)
description = DNS
command = /usr/sbin/ufw allow out from any to any port 53
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 53
iface = 
routed = 
logging = 

[Rule1]
ufw_rule = 1714:1764/tcp ALLOW OUT Anywhere (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto tcp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/tcp
iface = 
routed = 
logging = 

[Rule2]
ufw_rule = 1714:1764/udp ALLOW OUT Anywhere (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto udp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/udp
iface = 
routed = 
logging = 

[Rule3]
ufw_rule = 1194 ALLOW OUT Anywhere (out)
description = OpenVPN
command = /usr/sbin/ufw allow out from any to any port 1194
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1194
iface = 
routed = 
logging = 

[Rule4]
ufw_rule = 27017 ALLOW OUT Anywhere (out)
description = MongoDB
command = /usr/sbin/ufw allow out from any to any port 27017
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 27017
iface = 
routed = 
logging = 

[Rule5]
ufw_rule = 8000 ALLOW OUT Anywhere (out)
description = NodeJS App
command = /usr/sbin/ufw allow out from any to any port 8000
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 8000
iface = 
routed = 
logging = 

[Rule6]
ufw_rule = 3000 ALLOW OUT Anywhere (out)
description = NodeJS App
command = /usr/sbin/ufw allow out from any to any port 3000
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 3000
iface = 
routed = 
logging = 

[Rule7]
ufw_rule = 3500 ALLOW OUT Anywhere (out)
description = NodeJS App
command = /usr/sbin/ufw allow out from any to any port 3500
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 3500
iface = 
routed = 
logging = 

[Rule8]
ufw_rule = 443/tcp ALLOW OUT Anywhere (out)
description = HTTPS
command = /usr/sbin/ufw allow out proto tcp from any to any port 443
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443/tcp
iface = 
routed = 
logging = 

[Rule9]
ufw_rule = 53 (v6) ALLOW OUT Anywhere (v6) (out)
description = DNS
command = /usr/sbin/ufw allow out from any to any port 53
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 53
iface = 
routed = 
logging = 

[Rule10]
ufw_rule = 1714:1764/tcp (v6) ALLOW OUT Anywhere (v6) (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto tcp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/tcp
iface = 
routed = 
logging = 

[Rule11]
ufw_rule = 1714:1764/udp (v6) ALLOW OUT Anywhere (v6) (out)
description = KDE Connect
command = /usr/sbin/ufw allow out proto udp from any to any port 1714:1764
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1714:1764/udp
iface = 
routed = 
logging = 

[Rule12]
ufw_rule = 1194 (v6) ALLOW OUT Anywhere (v6) (out)
description = OpenVPN
command = /usr/sbin/ufw allow out from any to any port 1194
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 1194
iface = 
routed = 
logging = 

[Rule13]
ufw_rule = 27017 (v6) ALLOW OUT Anywhere (v6) (out)
description = MongoDB
command = /usr/sbin/ufw allow out from any to any port 27017
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 27017
iface = 
routed = 
logging = 

[Rule14]
ufw_rule = 8000 (v6) ALLOW OUT Anywhere (v6) (out)
description = NodeJS App
command = /usr/sbin/ufw allow out from any to any port 8000
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 8000
iface = 
routed = 
logging = 

[Rule15]
ufw_rule = 3000 (v6) ALLOW OUT Anywhere (v6) (out)
description = NodeJS App
command = /usr/sbin/ufw allow out from any to any port 3000
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 3000
iface = 
routed = 
logging = 

[Rule16]
ufw_rule = 3500 (v6) ALLOW OUT Anywhere (v6) (out)
description = NodeJS App
command = /usr/sbin/ufw allow out from any to any port 3500
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 3500
iface = 
routed = 
logging = 

[Rule17]
ufw_rule = 443/tcp (v6) ALLOW OUT Anywhere (v6) (out)
description = HTTPS
command = /usr/sbin/ufw allow out proto tcp from any to any port 443
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443/tcp
iface = 
routed = 
logging = 

