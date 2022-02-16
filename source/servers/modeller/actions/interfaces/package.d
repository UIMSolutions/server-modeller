module servers.modeller.actions.interfaces;

@safe:
import servers.modeller;
import servers.modeller.settings.interface_;
import models.modeller.entities.interface_;

void uimInterfacesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesCreateAction~":uimInterfacesCreateAction");

  MDLAction_CreateInterface(serverModeller).request(req, res);
}

void uimInterfacesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesUpdateAction~":uimInterfacesUpdateAction");

  MDLAction_UpdateInterface(serverModeller).request(req, res);
}

void uimInterfacesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesDeleteAction~":uimInterfacesDeleteAction");

  MDLAction_DeleteInterface(serverModeller).request(req, res);
}
