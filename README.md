# TWRP device tree for Cat S42 (S42G) - MT6761 - A10
 - kernel version [4.9.190] -- 32-bit

 - This device tree have encrypt/decrypt mode activated and stock boot.img has 32MB.

### Firmware version: 
- super_a10.img.gz
```ruby
ro.build.version.incremental=LTE_C01091.10_NE_S42G_0.037.01.00
ro.product.display=Cat S42
ro.custom.build.version=LTE_C01091.10_NE_S42G_0.037.01.00
ro.tcustom.build.version=LTE_C01091.10_NE_S42G_0.037.01.00
ro.custom.build.version.carrier.eea=LTE_C01091.10_E_S42G_0.037.01.00
ro.tcustom.build.version.carrier.eea=LTE_C01091.10_E_S42G_0.037.01.00
ro.internal.build.version=V500AE_PVT_10.0_CATB_CFC_45
ro.vendor.custom.build.version=LTE_C01091.10_NE_S42G_0.037.01.00
ro.vendor.tcustom.build.version=LTE_C01091.10_NE_S42G_0.037.01.00
ro.vendor.custom.build.version.carrier.eea=LTE_C01091.10_E_S42G_0.037.01.00
ro.vendor.tcustom.build.version.carrier.eea=LTE_C01091.10_E_S42G_0.037.01.00
ro.build.version.incremental.carrier.eea=LTE_C01091.10_E_S42G_0.037.01.00
ro.vendor.internal.build.version=V500AE_PVT_10.0_CATB_CFC_45
```

## Status MT6761 - A10
- [X] WIP
  - Status: booted??
    - [?] booted

  - boot-S42G-A10.img => Working?? Not working?
    - [?] Working
  
  - encrypt & decrypt => Working?? Not working?
    - [?] Working
  

# Specs
[here](https://www.gsmarena.com/cat_s42-10029.php)

![Cat S42](https://fdn2.gsmarena.com/vv/pics/cat/cat-s32.jpg)
===================================================================== 

### TWRP Pictures


## Big thanks to:
- @alaskalinuxuser for tests.
- @lopestom for test encrypt/decrypt mode.
- [TeamWin](https://github.com/TeamWin) for TWRP SC.
\* TWRP version 3.7.0_11 *

                  ####### generated by lopestom #######
===================================================================== 

## To build with minimal twrp AOSP
```
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_S42G-eng
mka bootimage
```
