module servers.modeller.pages.interfaces.delete_;

@safe:
import servers.modeller;

void uimInterfacesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesDelete~":uimInterfacesDelete");

  MDLInterfacesDeletePageController(serverModeller).request(req, res);
}