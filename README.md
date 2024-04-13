# guava

## patch

```sh
git apply --directory=buildroot patches/*.patch
```

## configure

```sh
./br.sh list-defconfigs
./br.sh guava_pc_x86_64_efi_defconfig
```

## build

```sh
./br.sh
```
