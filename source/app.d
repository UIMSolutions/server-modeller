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

/* 	router
		.get("/login", &servermodeller.loginPage.request)
		.get("/logout", &servermodeller.logoutPage.request);
 */
debug writeln("Setting router");
router // Pages
		.get("/modeller", &uimModellerPage);

router // Pages
		.get("/modeller/apis", &uimApisIndex)
		.get("/modeller/apis/", &uimApisIndex)
		.get("/modeller/apis/view", &uimApisView)
		.get("/modeller/apis/create", &uimApisCreate)
		.get("/modeller/apis/edit", &uimApisEdit)
		.get("/modeller/apis/delete", &uimApisDelete);

	router // Apis Actions
		.post("/modeller/apis/actions/create", &uimApisCreateAction)
		.post("/modeller/apis/actions/save", &uimApisUpdateAction)
		.post("/modeller/apis/actions/delete", &uimApisDeleteAction);

router // Pages
		.get("/modeller/apps", &uimAppsIndex)
		.get("/modeller/apps/", &uimAppsIndex)
		.get("/modeller/apps/view", &uimAppsView)
		.get("/modeller/apps/create", &uimAppsCreate)
		.get("/modeller/apps/edit", &uimAppsEdit)
		.get("/modeller/apps/delete", &uimAppsDelete);

	router // Apps Actions
		.post("/modeller/apps/actions/create", &uimAppsCreateAction)
		.post("/modeller/apps/actions/save", &uimAppsUpdateAction)
		.post("/modeller/apps/actions/delete", &uimAppsDeleteAction);

	router // Pages
		.get("/modeller/attributes", &uimAttributesIndex)
		.get("/modeller/attributes/", &uimAttributesIndex)
		.get("/modeller/attributes/view", &uimAttributesView)
		.get("/modeller/attributes/create", &uimAttributesCreate)
		.get("/modeller/attributes/edit", &uimAttributesEdit)
		.get("/modeller/attributes/delete", &uimAttributesDelete);

	router // Attributes Actions
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

	router // AttributeClasses Actions
		.post("/modeller/attributeclasses/actions/create", &uimAttributeClassesCreateAction)
		.post("/modeller/attributeclasses/actions/save", &uimAttributeClassesUpdateAction)
		.post("/modeller/attributeclasses/actions/delete", &uimAttributeClassesDeleteAction);

router // Pages
		.get("/modeller/classes", &uimClassesIndex)
		.get("/modeller/classes/", &uimClassesIndex)
		.get("/modeller/classes/view", &uimClassesView)
		.get("/modeller/classes/create", &uimClassesCreate)
		.get("/modeller/classes/edit", &uimClassesEdit)
		.get("/modeller/classes/delete", &uimClassesDelete);

	router // Classes Actions
		.post("/modeller/classes/actions/create", &uimClassesCreateAction)
		.post("/modeller/classes/actions/save", &uimClassesUpdateAction)
		.post("/modeller/classes/actions/delete", &uimClassesDeleteAction);

	router
		.get("/modeller/entityclasses", &uimEntityClassesIndex)
		.get("/modeller/entityclasses/", &uimEntityClassesIndex)
		.get("/modeller/entityclasses/view", &uimEntityClassesView)
		.get("/modeller/entityclasses/create", &uimEntityClassesCreate)
		.get("/modeller/entityclasses/edit", &uimEntityClassesEdit)
		.get("/modeller/entityclasses/delete", &uimEntityClassesDelete);

	router // EntityClasses Actions
		.post("/modeller/entityclasses/actions/create", &uimEntityClassesCreateAction)
		.post("/modeller/entityclasses/actions/save", &uimEntityClassesUpdateAction)
		.post("/modeller/entityclasses/actions/delete", &uimEntityClassesDeleteAction);

router // Pages
		.get("/modeller/interfaces", &uimInterfacesIndex)
		.get("/modeller/interfaces/", &uimInterfacesIndex)
		.get("/modeller/interfaces/view", &uimInterfacesView)
		.get("/modeller/interfaces/create", &uimInterfacesCreate)
		.get("/modeller/interfaces/edit", &uimInterfacesEdit)
		.get("/modeller/interfaces/delete", &uimInterfacesDelete);

	router // Interfaces Actions
		.post("/modeller/interfaces/actions/create", &uimInterfacesCreateAction)
		.post("/modeller/interfaces/actions/save", &uimInterfacesUpdateAction)
		.post("/modeller/interfaces/actions/delete", &uimInterfacesDeleteAction);

	router
		.get("/modeller/libraries", &uimLibrariesIndex)
		.get("/modeller/libraries/", &uimLibrariesIndex)
		.get("/modeller/libraries/view", &uimLibrariesView)
		.get("/modeller/libraries/create", &uimLibrariesCreate)
		.get("/modeller/libraries/edit", &uimLibrariesEdit)
		.get("/modeller/libraries/delete", &uimLibrariesDelete);

	router // Libraries Actions
		.post("/modeller/libraries/actions/create", &uimLibrariesCreateAction)
		.post("/modeller/libraries/actions/save", &uimLibrariesUpdateAction)
		.post("/modeller/libraries/actions/delete", &uimLibrariesDeleteAction);

	router
		.get("/modeller/methods", &uimMethodsIndex)
		.get("/modeller/methods/", &uimMethodsIndex)
		.get("/modeller/methods/view", &uimMethodsView)
		.get("/modeller/methods/create", &uimMethodsCreate)
		.get("/modeller/methods/edit", &uimMethodsEdit)
		.get("/modeller/methods/delete", &uimMethodsDelete);

	router // Methods Actions
		.post("/modeller/methods/actions/create", &uimMethodsCreateAction)
		.post("/modeller/methods/actions/save", &uimMethodsUpdateAction)
		.post("/modeller/methods/actions/delete", &uimMethodsDeleteAction);

	router
		.get("/modeller/models", &uimModelsIndex)
		.get("/modeller/models/", &uimModelsIndex)
		.get("/modeller/models/view", &uimModelsView)
		.get("/modeller/models/create", &uimModelsCreate)
		.get("/modeller/models/edit", &uimModelsEdit)
		.get("/modeller/models/delete", &uimModelsDelete);

	router // Models Actions
		.post("/modeller/models/actions/create", &uimModelsCreateAction)
		.post("/modeller/models/actions/save", &uimModelsUpdateAction)
		.post("/modeller/models/actions/delete", &uimModelsDeleteAction);

	router
		.get("/modeller/modules", &uimModulesIndex)
		.get("/modeller/modules/", &uimModulesIndex)
		.get("/modeller/modules/view", &uimModulesView)
		.get("/modeller/modules/create", &uimModulesCreate)
		.get("/modeller/modules/edit", &uimModulesEdit)
		.get("/modeller/modules/delete", &uimModulesDelete);

	router // Modules Actions
		.post("/modeller/modules/actions/create", &uimModulesCreateAction)
		.post("/modeller/modules/actions/save", &uimModulesUpdateAction)
		.post("/modeller/modules/actions/delete", &uimModulesDeleteAction);

	router
		.get("/modeller/packages", &uimPackagesIndex)
		.get("/modeller/packages/", &uimPackagesIndex)
		.get("/modeller/packages/view", &uimPackagesView)
		.get("/modeller/packages/create", &uimPackagesCreate)
		.get("/modeller/packages/edit", &uimPackagesEdit)
		.get("/modeller/packages/delete", &uimPackagesDelete);

	router // Packages Actions
		.post("/modeller/packages/actions/create", &uimPackagesCreateAction)
		.post("/modeller/packages/actions/save", &uimPackagesUpdateAction)
		.post("/modeller/packages/actions/delete", &uimPackagesDeleteAction);

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
		
			if (auto entityTemplate = uimEntityRegistry[name]) {
				debug writeln("entityid = ", uimEntityRegistry[name].id);
		
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("auto dbTentant = database[uim]");
	if (auto dbTentant = database["uim"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("uimEntityRegistry name:", name, " path:", name);

			if (auto entityTemplate = uimEntityRegistry[name]) {
				debug writeln("entityid = ", uimEntityRegistry[name].id);
	
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("database.tenantNames -> ", database.tenantNames);
	foreach(tenant; database.tenantNames) {
		debug writeln(tenant, " with ", database[tenant].collectionNames);
	}

	debug writeln("serverModeller.database(database)");
  serverModeller.database(database);
	// servermodeller.rootPath(rootPath).registerApp(router); 

  mixin(SetHTTP!());
	runApplication();
}
