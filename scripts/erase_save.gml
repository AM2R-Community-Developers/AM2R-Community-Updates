/// erase_save()
filename = "save" + string(global.saveslot + 1);
file_delete(filename);
with (oMenuSaveSlot) if (slot == global.saveslot) {
    saveexists = 0;
    smode = 0;
}
saveslot_flash(global.saveslot);

file_delete("random" + string(global.saveslot + 1) + ".ini");
file_delete("save" + string(global.saveslot + 1) + ".dat");
