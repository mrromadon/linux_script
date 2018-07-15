#!/bin/bash

PROXY_ID=10.9.20.27
PROXY_PORT=6565
export https_proxy=http://$PROXY_ID:$PROXY_PORT/
export http_proxy=http://$PROXY_ID:$PROXY_PORT/
export ftp_proxy=http://$PROXY_ID:$PROXY_PORT/
export no_proxy=.astra-honda.com
