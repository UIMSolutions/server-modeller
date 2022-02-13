module servers.modeller.actions.modules;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import modules.modeller.entities.model;

void uimModulesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesCreateAction~":uimModulesCreateAction");

  auto action = MDLAction_CreateModel(serverModeller);
  action.request(req, res);
}

void uimModulesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesUpdateAction~":uimModulesUpdateAction");

  auto action = MDLAction_UpdateModel(serverModeller);
  action.request(req, res);
}

void uimModulesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesDeleteAction~":uimModulesDeleteAction");

  auto action = MDLAction_DeleteModel(serverModeller);
  action.request(req, res);
}
