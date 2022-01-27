import vibe.vibe;
import servers.modeller;

mixin DefaultConfig!("server-modeller");
mixin ReadConfig;
void main(string[] args) {
  readConfig();
  mixin GetoptConfig;
  
	auto router = new URLRouter;	
  mixin(SetRouterDefault!());

/* 	router
		.get("/login", &servermodeller.loginPage.request)
		.get("/logout", &servermodeller.logoutPage.request);
 */
	router // Pages
		.get("/modeller", &uimModellerPage);

	router // Pages
		.get("/modeller/attributes", &uimAttributesIndex)
		.get("/modeller/attributes/", &uimAttributesIndex)
		.get("/modeller/attributes/view", &uimAttributesView)
		.get("/modeller/attributes/create", &uimAttributesCreate)
		.get("/modeller/attributes/edit", &uimAttributesEdit)
		.get("/modeller/attributes/delete", &uimAttributesDelete);

	router // Actions
		.post("/modeller/attributes/actions/create", &uimAttributesCreateAction)
		.post("/modeller/attributes/actions/save", &uimAttributesUpdateAction)
		.post("/modeller/attributes/actions/delete", &uimAttributesDeleteAction);

	router
		.get("/modeller/attributeclasses", &uimAttributeClassesIndex)
		.get("/modeller/attributeclasses/", &uimAttributeClassesIndex)
		.get("/modeller/attributeclasses/view", &uimAttributeClassesView)
		.get("/modeller/attributeclasses/create", &uimAttributeClassesCreate)
		.get("/modeller/attributeclasses/edit", &uimAttributeClassesEdit)
		.get("/modeller/attributeclasses/delete", &uimAttributeClassesDelete);

	router // Actions
		.post("/modeller/attributeclasses/actions/create", &uimAttributeClassesCreateAction)
		.post("/modeller/attributeclasses/actions/save", &uimAttributeClassesUpdateAction)
		.post("/modeller/attributeclasses/actions/delete", &uimAttributeClassesDeleteAction);

	router
		.get("/modeller/entityclasses", &uimEntityClassesIndex)
		.get("/modeller/entityclasses/", &uimEntityClassesIndex)
		.get("/modeller/entityclasses/view", &uimEntityClassesView)
		.get("/modeller/entityclasses/create", &uimEntityClassesCreate)
		.get("/modeller/entityclasses/edit", &uimEntityClassesEdit)
		.get("/modeller/entityclasses/delete", &uimEntityClassesDelete);

	router // Actions
		.post("/modeller/entityclasses/actions/create", &uimEntityClassesCreateAction)
		.post("/modeller/entityclasses/actions/save", &uimEntityClassesUpdateAction)
		.post("/modeller/entityclasses/actions/delete", &uimEntityClassesDeleteAction);

	router
		.get("/", &uimIndex)
		.get("/login", &uimLoginPage)
		.get("/login2", &uimLogin2Page)
		.get("/register", &uimRegister)
		.get("/logout", &uimLogout)
		.get("/server", &uimServer)
		.get("/sites", &uimSites);

	router // actions
		.post("/login_action", &uimLoginAction)
		.post("/login2_action", &uimLogin2Action)
		.post("/sites/select", &uimSiteSelectAction);

	debug writeln("Create Database");
	auto database = ETBBase.importDatabase(JSBFileBase("../../DATABASES/uim"));
	debug writeln("Found Tenants:", database.count);
	// central tenant
	auto tentant = database["central"];
	foreach(name; [	"accounts", "apps", "groups", "logins", "organizations", "passwords", 
									"passwordrules", "tenants", "requests", "rights", "roles", "sessions", "sites", "users"]) {
		tentant[name].entityPath("system/"~name);
	}

	tentant = database["systems"];
	foreach(name; [	"accounts", "apps", "groups", "logins", "organizations", "passwords", 
									"passwordrules", "tenants", "requests", "rights", "roles", "sessions", "sites", "users"]) {
		tentant[name].entityPath("systems/"~name);
	}

	// individual tenant
	tentant = database["uim"];
	foreach(name; [ "blogs", "demos", "attributeclasses", "glossary", "entityclasses", "news", "offers", "pages", "themes", "tutorials"]) {
		tentant[name].entityPath("modeller/"~name);
	}

	debug writeln(database.tenantNames);
	foreach(tenant; database.tenantNames) {
		debug writeln(tenant, " with ", database[tenant].collectionNames);
	}

  serverModeller.database(database);
	// servermodeller.rootPath(rootPath).registerApp(router); 

  mixin(SetHTTP!());
	runApplication();
}
