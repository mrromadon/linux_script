#!/bin/bash

PROXY_ID=x.x.x.x
PROXY_PORT=<port number>
export https_proxy=http://$PROXY_ID:$PROXY_PORT/
export http_proxy=http://$PROXY_ID:$PROXY_PORT/
export ftp_proxy=http://$PROXY_ID:$PROXY_PORT/
export no_proxy=.astra-honda.com
