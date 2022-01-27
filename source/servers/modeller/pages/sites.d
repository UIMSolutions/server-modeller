module servers.modeller.pages.sites;

@safe:
import servers.modeller;

void uimSites(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimSites~":uimSites");
  STRINGAA reqParameters = readRequestParameters(req, null); 

  auto myController = APPPageController;
  myController.view(APPView.layout(MDLLayout));

  auto responseContent = myController.view.render(reqParameters); 
  res.writeBody(responseContent, "text/html");
}

void uimSiteSelectAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimSiteSelectAction~":uimSiteSelectAction");

  auto action = APPSelectSiteActionController(serverModeller);
  action.request(req, res);
}
/* 
static this() {
  serverModeller.pages("sites", new class DAPPPageController {
    this() { 
      super();
      this
      .checks([APPCheckAppSession, APPCheckSession]);
    }

    override DH5Obj toH5(STRINGAA options = null) {
      super.toH5(reqParameters);

      // debug writeln(StyledString("In serverModeller.index...").setForeground(AnsiColor.black).setBackground(AnsiColor.white));
      debug writeln("serverModeller.index -> reqParameters = ", reqParameters);
      debug writeln("serverModeller.index -> pageTitle = ", reqParameters.get("pageTitle", ""));

      DOOPEntity session;
      DOOPEntity site;
      auto appSession = getAppSession(options);
      if (appSession) {
        session = appSession.session; 
        site    = appSession.site; }
      auto sessionId = session ? session.id.toString : "";
  
      auto sites = database ? database["central", "sites"].findMany : null;
      DH5Obj[] sitesContent; 
      sites.each!(a => sitesContent ~= 
        cast(DH5Obj)H5Div(["col-md-6 col-xl-3"],
          H5Div(["ratio ratio-1x1"], 
            BS5Form(["method":"Post", "action": "/sites/select"], 
              BS5Card
                .body_(["text-center"], 
                  H5InputHidden("sessionId", ["name":"sessionId", "value":sessionId]),
                  H5InputHidden("siteId", ["name":"siteId", "value":a.id.toString]),
                  H5Div(["card-title mb-1"], a.display),
                  H5Div(["text-muted"], BS5ButtonSubmit(["btn-info"], "Site auswählen")))))));

      return
        H5Div(["content"],
          H5Div(["container-xl"], 
            BS5Row("messages", [""]),
            BS5Row(["row-deck row-cards"], sitesContent)));
        
/*         reqParameters["script"] = reqParameters.get("script", "")
        ~"sessionStorage.setItem('sessionId', '%s'); sessionStorage.setItem('siteId', '%s');".format(sessionId, siteId);
 * /

      }
    }
  );
}

 */