# Disk Utils Informations

## Copy partition
> e2image -ra -p '/origin/partition' '/copy/partition'

## Check if disk is HDD or SSD
> cat /sys/block/\<device\>/queue/rotational

In \<device\> you should give the name of the disk (sda, sdb, sdc, etc)

If the output be:

	1 -> HDD
	
	0 -> SSD

## SSD

### S.M.A.R.T

#### Monitoring and testing ssd's health with smartmontools 

> smartctl -a /dev/sdX


