module servers.modeller.pages.interfaces.update;

@safe:
import servers.modeller;

void uimInterfacesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesEdit~":uimInterfacesEdit");

  MDLInterfacesUpdatePageController(serverModeller).request(req, res);
}