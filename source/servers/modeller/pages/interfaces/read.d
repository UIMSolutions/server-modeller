module servers.modeller.pages.interfaces.read;

@safe:
import servers.modeller;

void uimInterfacesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimInterfacesView~":uimInterfacesView");

  MDLInterfacesReadPageController(serverModeller).request(req, res);
}