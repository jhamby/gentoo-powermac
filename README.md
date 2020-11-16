# gentoo-powermac repo overlay

Jake's Gentoo repo overlay for PowerPC and PowerMac bug fixes and features.

# Installation

Sync this repo to a location such as `/var/db/repos/gentoo-powermac`,
and then add this file to `/etc/portage/repos.conf/gentoo-powermac.conf`:

```
[gentoo-powermac]
location = /var/db/repos/gentoo-powermac
auto-sync = no
priority = 100
strict-misc-digests = false
sync-openpgp-key-refresh = false
```
