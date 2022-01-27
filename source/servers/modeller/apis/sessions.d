module servers.modeller.data.sessions;

@safe:
import servers.modeller;

private:
  string myCollectionName = "sessions";
  string myUrl = "/central/sessions";
  string myApi = "api/v1/central/sessions";

/* public:
static this() {
  serverModeller.data(myApi, new class DSRVApi {
    this() { super();
    this.url(myUrl).siteName("central").siteName("central").pool(myCollectionName).crudMode("list"); }});

  serverModeller.data(myApi~"/create", new class DSRVApi {
    this() { super();
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("create"); }});

  serverModeller.data(myApi~"/view", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("read"); }});

  serverModeller.data(myApi~"/edit", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("update"); }});

  serverModeller.data(myApi~"/delete", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).siteName("central").pool(myCollectionName).crudMode("delete"); }});
} */