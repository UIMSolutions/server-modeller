module servers.modeller.pages.logout;

@safe:
import servers.modeller;

void uimLogout(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLogout~":uimLogout");

  APPLogoutPageController(serverModeller).request(req, res);
}

/* static this() {
  serverModeller.logoutPage(new class DAPPPageController {
    this() { super(); }

    override DH5Obj toH5(STRINGAA options = null) {
      if (_request.session) _response.terminateSession(); 
      _response.redirect("/login");

      return 
        H5Div(["container-xl"],
          // pageTitle("Logout"),
          BS5Row("messages", [""]),
          BS5Row(["row-cards"])
        );       
      }
    }
  );
} */