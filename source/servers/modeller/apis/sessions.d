module servers.modeller.data.sessions;

@safe:
import servers.modeller;

private:
  string myCollectionName = "sessions";
  string myUrl = "/central/sessions";
  string myApi = "api/v1/central/sessions";

/* public:
static this() {
  serverCms.data(myApi, new class DSRVApi {
    this() { super();
    this.url(myUrl).siteName("central").siteName("central").pool(myCollectionName).crudMode("list"); }});

  serverCms.data(myApi~"/create", new class DSRVApi {
    this() { super();
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("create"); }});

  serverCms.data(myApi~"/view", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("read"); }});

  serverCms.data(myApi~"/edit", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("update"); }});

  serverCms.data(myApi~"/delete", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("delete"); }});
} */