module servers.modeller;

@safe:
mixin ImportPhobos;
mixin ImportDubs;
mixin ImportUim;

public import colored;

// Additional imports
public import uim.systems;
public import uim.jsonbase;
public import uim.entities;
public import uim.entitybase;

// Library
public import uim.modeller;

// server-modeller packages
public import servers.modeller.actions;
public import servers.modeller.apis;
public import servers.modeller.pages;
public import servers.modeller.settings;

public import models.systems;
public import models.modeller;

public import layouts.tabler;

// mixin(ImportLocal!("cms"));

DAPPApplication serverModeller;
string[size_t] errorMessages;
static this() {
  serverModeller = new class DAPPApplication {
    this() { super(); 
      this
      .layout(MDLLayout)
      .scripts.addLinks(
        "/js/apps/modeller/app.js");
    }
  };
}