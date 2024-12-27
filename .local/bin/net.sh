#!/bin/sh
cat << "EOF"

/****************************************************************
 *								*
 *				WIFI				*
 *								*
 *		   $ doas vi /etc/hostname.iwm0			*
 *								*
 *		| 1 join "WIFI_NAME" wpakey "PASSWORD		*
 *		| 2 inet autoconf				*
 *								*
 *		$ doas sh /etc/netstart <interface>		*
 *								*
 ****************************************************************
 *
 *
 ****************************************************************
 *								*
 *				DNS				*
 *								*
 *		    $ doas vi /etc/resolv.conf			*
 *								*
 *		| 1  search example.com				*
 *		| 2  nameserver 1.1.1.1				*
 *		| 2  nameserver 1.0.0.1				*
 *								*
 *		# making immutable(OPTIONAL)			*
 *		$ doas chflags schg /etc/resolv.conf		*
 *								*
 *		$ dig @1.1.1.1 openbsd.org			*
 *								*
 *		$ doas tail -f /var/log/messages		*
 *								*
 ****************************************************************
 */
EOF
