module servers.modeller.actions.methods;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import methods.modeller.entities.model;

void uimMethodsCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsCreateAction~":uimMethodsCreateAction");

  auto action = MDLAction_CreateModel(serverModeller);
  action.request(req, res);
}

void uimMethodsUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsUpdateAction~":uimMethodsUpdateAction");

  auto action = MDLAction_UpdateModel(serverModeller);
  action.request(req, res);
}

void uimMethodsDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsDeleteAction~":uimMethodsDeleteAction");

  auto action = MDLAction_DeleteModel(serverModeller);
  action.request(req, res);
}
