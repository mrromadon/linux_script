#!/bin/bash

PROXY_ID=10.0.01
PROXY_PORT=9191
export https_proxy=http://$PROXY_ID:$PROXY_PORT/
export http_proxy=http://$PROXY_ID:$PROXY_PORT/
export ftp_proxy=http://$PROXY_ID:$PROXY_PORT/
export no_proxy=.domain.com
