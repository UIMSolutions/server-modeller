module servers.modeller.pages.interfaces.create;

@safe:
import servers.modeller;

void uimInterfacesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesCreate~":uimInterfacesCreate");

  MDLInterfacesCreatePageController(serverModeller).request(req, res);
}
