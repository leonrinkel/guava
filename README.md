# guava

## usage

### patch

```sh
git apply --directory=buildroot patches/*.patch
```

### configure

```sh
./br.sh list-defconfigs
./br.sh guava_pc_x86_64_efi_defconfig
```

### build

```sh
./br.sh
```

## todo

- [x] add samba auth
- [x] rather run from ram
- [ ] fix failing units
- [ ] customize branding
- [ ] add avahi/zeroconf/mdns
- [ ] add firewall
- [ ] add zfs scrub cron
- [ ] add htop
- [ ] smart & zfs status reporting
- [ ] remove unused kernel modules
- [ ] hardening best practices
- [ ] add things like memtest to grub
- [ ] prevent remount,rw?
- [ ] better way of setting smbpasswd
- [ ] add nfs share
