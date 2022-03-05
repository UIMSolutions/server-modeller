module servers.modeller.actions.packages;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import models.modeller.entities.model;

void uimPackagesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesCreateAction~":uimPackagesCreateAction");

  MDLAction_CreatePackage(serverModeller).request(req, res);
}

void uimPackagesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesUpdateAction~":uimPackagesUpdateAction");

  MDLAction_UpdatePackage(serverModeller).request(req, res);
}

void uimPackagesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesDeleteAction~":uimPackagesDeleteAction");

  MDLAction_DeletePackage(serverModeller).request(req, res);
}
