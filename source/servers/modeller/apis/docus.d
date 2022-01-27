module servers.modeller.apis.docus;

@safe:
import servers.modeller;

private:
  string myCollectionName = "docus";
  string myUrl = "/modeller/docus";
  string myApi = "api/v1/cms/docus";

public:
/* static this() {
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