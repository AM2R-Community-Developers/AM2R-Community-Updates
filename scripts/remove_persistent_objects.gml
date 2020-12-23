/// remove_persistent_objects()
with (oCharacter) instance_destroy();
with (oCamera) instance_destroy();
if (instance_exists(oQuake)) with (oQuake) instance_destroy();
if (instance_exists(oBigQuake)) with (oBigQuake) instance_destroy();
if (instance_exists(oBigQuakeQueen)) with (oBigQuakeQueen) instance_destroy();
if (instance_exists(oNotification)) with (oNotification) instance_destroy();
if (instance_exists(oAreaIntro)) with (oAreaIntro) instance_destroy();
