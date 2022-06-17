# see grub config
cat /etc/default/grub

# change line
> GRUB_CMDLINE_LINUX="__*ipv6.disable=1*__ crashkernel=auto rhgb quiet"

# reload grub.cfg
grub2-mkconfig -o /boot/grub2/grub.cfg
