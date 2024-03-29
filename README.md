# 3D Printer Configs

This repo contains configuration and slicer settings for my 3D printers.

## Printers

The printer configs have been tuned specifically for these printers with the
selected mods. They may be useful as a reference but you _should not_ attempt
to run them directly! Even if your printer is set up the same way there are
subtle differences in builds that can result in damage to your printer.

### V2.700

This is a Voron 2.4 with 250mm^3 build volume. Mods include:
- [Stealthburner and CW2]
- [Mellow Fly SB2040]
- [Nevermore] V5 Duo
- [Decontaminator] Nozzle Scrubber (without purge bucket)
- [Steel Extrusion Backers]
- Dynamic Bed Mesh

### VS.096

This is a Voron SwitchWire with dual M4 extruders and a Y splitter. It uses an
SKR V1.4 in order to support the additional extruder. Mods include:
- [Badnoob's AB-BN-30]
- Dynamic Bed Mesh

## Slicers

### SuperSlicer

Currently the only slicer I'm using. These profiles have been tuned
specifically for the above printers and may not serve as a good starting point
for yours. They are here to serve as my backup and a reference for others.

# License

All files here are licensed under the GPL v3. See [LICENSE](./LICENSE) for full
details.

[Stealthburner and CW2]: https://vorondesign.com/voron_stealthburner
[Mellow Fly SB2040]: https://mellow-3d.github.io/fly-sb2040_v1_general.html
[Badnoob's AB-BN-30]: https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/Badnoob/AB-BN
[Decontaminator]: https://www.teamfdm.com/files/file/188-decontaminator-purge-bucket/
[Nevermore]: https://github.com/nevermore3d/Nevermore_Micro
[Steel Extrusion Backers]: https://dfh.fm/collections/backers/products/steel-extrusion-backers?variant=42065000562910
