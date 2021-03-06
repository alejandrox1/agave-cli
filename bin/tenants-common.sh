#!/bin/bash
#
# tenants-common.sh
#
# author: opensource@tacc.cloud
#
# URL filter for tenants services
#

filter_service_url() {
	if [[ -z $hosturl ]]; then
		if (($development)); then
			if [[ -n "$AGAVE_DEV_TENANTS_API_BASEURL" ]]; then
				hosturl="$AGAVE_DEV_TENANTS_API_BASEURL/tenants"
			elif [[ -n "$devurl" ]]; then
				hosturl="${devurl}/tenants"
			else
				hosturl="https://api.tacc.utexas.edu/tenants/"
			fi
		else
			if [[ -n "$AGAVE_TENANTS_API_BASEURL" ]]; then
				hosturl="$AGAVE_TENANTS_API_BASEURL"
			else
				hosturl="https://api.tacc.utexas.edu/tenants/"
			fi
		fi
	fi

}
