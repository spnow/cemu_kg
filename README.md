# cemu_kg
Cemu registration file generator.

Run on a fresh install to build serial.bin and settings.bin.
Run once every 12 hours to keep online checks at bay.

(Ideally I should write a DLL that Cemu loads (like version.dll or some other proxy dll) to autoupdate the files as needed, but bleh. Or write a loader that just calls CreateProcess on cemu.exe, and updates the files before running)

Back up serial.bin and settings.bin if you have a legit install if you wanna mess with this.
