#! bin/bash
/etc/init.d/go-agent start
sed -i -e 's/127.0.0.1/mygo/g' /etc/default/go-agent
/etc/init.d/go-agent restart
tail -f /var/log/go-agent/go-agent-stdout.log
