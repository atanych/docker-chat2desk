#!/bin/bash
echo "$(tput setaf 2)************ DEPLOY GATEWAY ************$(tput sgr 0)"
sh deploy_gateway.sh
echo "$(tput setaf 2)************ DEPLOY HELPDESK ************$(tput sgr 0)"
sh deploy_helpdesk.sh
echo "$(tput setaf 2)************ DEPLOY API ************$(tput sgr 0)"
sh deploy_api.sh