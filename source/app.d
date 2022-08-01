import vibe.vibe;
import servers.modeller;

mixin DefaultConfig!("server-modeller");
//mixin ReadConfig;
void main(string[] args) {
	debug writeln("readConfig()");
  // readConfig();

	debug writeln("mixin GetoptConfig");
  //mixin GetoptConfig;
  
	auto router = new URLRouter;	
	debug writeln("SetRouterDefault!()");
  mixin(SetRouterDefault!());

debug writeln("Setting router");
router // Pages
		.get("/modeller", &uimModellerPage);

	mixin(AddRoutes!("router", "/modeller/apis", "uimApis"));
	mixin(AddRoutes!("router", "/modeller/apps", "uimApps"));
	mixin(AddRoutes!("router", "/modeller/attributes", "uimAttributes"));
	mixin(AddRoutes!("router", "/modeller/classes", "uimClasses"));
	mixin(AddRoutes!("router", "/modeller/components", "uimComponents"));
	mixin(AddRoutes!("router", "/modeller/controls", "uimControls"));
	mixin(AddRoutes!("router", "/modeller/elements", "uimElements"));
	mixin(AddRoutes!("router", "/modeller/entities", "uimEntities"));
	// mixin(AddRoutes!("router", "/modeller/functions", "uimFunctions"));
	mixin(AddRoutes!("router", "/modeller/interfaces", "uimInterfaces"));
	mixin(AddRoutes!("router", "/modeller/libraries", "uimLibraries"));
	mixin(AddRoutes!("router", "/modeller/methods", "uimMethods"));
	mixin(AddRoutes!("router", "/modeller/models", "uimModels"));
	mixin(AddRoutes!("router", "/modeller/modules", "uimModules"));
	mixin(AddRoutes!("router", "/modeller/packages", "uimPackages"));

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

	debug writeln("auto dbTentant = database[system]");
	if (auto dbTentant = database["systems"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("uimEntityRegistry name:", name, " path:", name);
		
			if (auto entityTemplate = EntityRegistry[name]) {
				debug writeln("entityid = ", EntityRegistry[name].id);
		
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("auto dbTentant = database[uim]");
	if (auto dbTentant = database["uim"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("uimEntityRegistry name:", name, " path:", name);

			if (auto entityTemplate = EntityRegistry[name]) {
				debug writeln("entityid = ", EntityRegistry[name].id);
	
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("database.tenantNames -> ", database.tenantNames);
	foreach(tenant; database.tenantNames) {
		debug writeln(tenant, " with ", database[tenant].collectionNames);
	}

	debug writeln("server.database(database)");
  thisServer.database(database);
	// server.rootPath(rootPath).registerApp(router); 

  mixin(SetHTTP!());
	runApplication();
}
