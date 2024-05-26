# guava

OS for my NAS

| component      | version   |
|----------------|-----------|
| buildroot [^1] | 2024.02.1 |
| linux     [^2] | 6.8.7     |
| zfs       [^3] | 2.2.3     |
| samba     [^4] | 4.20.0    |
| openssh   [^5] | 9.7p1     |

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

### provision

```sh
ssh-keygen -A -f external/board/pc/overlay
cat ~/.ssh/id_rsa.pub > external/board/pc/overlay/root/.ssh/authorized_keys
```

```sh
sudo cp /var/lib/samba/private/passdb.tdb external/board/pc/overlay/var/lib/samba/private/
sudo chown $USER:USER external/board/pc/overlay/var/lib/samba/private/passdb.tdb
```

### build

```sh
./br.sh
```

## todo

- [x] add samba auth
- [x] rather run from ram
- [x] add htop
- [x] customize branding
- [x] add avahi/zeroconf/mdns
- [x] remove unused kernel modules
- [x] add ssh
- [ ] fix failing units
- [ ] add firewall
- [ ] add zfs scrub cron
- [ ] smart & zfs status reporting
- [ ] hardening best practices
- [ ] add things like memtest to grub
- [ ] prevent remount,rw?
- [ ] better way of setting smbpasswd
- [ ] add nfs share

[^1]: https://buildroot.org/download.html
[^2]: https://kernel.org
[^3]: https://github.com/openzfs/zfs/releases
[^4]: https://download.samba.org/pub/samba/
[^5]: https://www.openssh.com/releasenotes.html
