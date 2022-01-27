module servers.modeller.apis.offers;

@safe:
import servers.modeller;

private:
  string myCollectionName = "offers";
  string myUrl = "/modeller/offers";
  string myApi = "api/v1/cms/offers";
/* 
public:
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