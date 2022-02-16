module servers.modeller.pages.interfaces.index;

@safe:
import servers.modeller;

void uimInterfacesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesIndex~":uimInterfacesIndex");

  MDLInterfacesIndexPageController(serverModeller).request(req, res);
}