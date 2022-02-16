module servers.modeller.actions.classes;

@safe:
import servers.modeller;
import servers.modeller.settings.class_;
import models.modeller.entities.class_;

void uimClassesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesCreateAction~":uimClassesCreateAction");

  MDLAction_CreateClass(serverModeller).request(req, res);
}

void uimClassesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesUpdateAction~":uimClassesUpdateAction");

  MDLAction_UpdateClass(serverModeller).request(req, res);
}

void uimClassesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesDeleteAction~":uimClassesDeleteAction");

  MDLAction_DeleteClass(serverModeller).request(req, res);
}
