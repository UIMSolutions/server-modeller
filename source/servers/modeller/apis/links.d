module servers.modeller.apis.links;

@safe:
import servers.modeller;

private:
  string myCollectionName = "links";
  string myUrl = "/modeller/links";
  string myApi = "api/v1/cms/links";

/* public:
static this() {
  serverModeller.data(myApi, new class DSRVApi {
    this() { super();
    this.url(myUrl).pool(myCollectionName).crudMode("list"); }});

  serverModeller.data(myApi~"/create", new class DSRVApi {
    this() { super();
    this.url(myUrl).pool(myCollectionName).crudMode("create"); }});

  serverModeller.data(myApi~"/view", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool(myCollectionName).crudMode("read"); }});

  serverModeller.data(myApi~"/edit", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool(myCollectionName).crudMode("update"); }});

  serverModeller.data(myApi~"/delete", new class DSRVApi {
    this() { super(); 
    this.url(myUrl).pool(myCollectionName).crudMode("delete"); }});
} */