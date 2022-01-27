module servers.modeller.data.users;

@safe:
import servers.modeller;

private:
  string myCollectionName = "users";
  string myUrl = "/central/users";
  string myApi = "api/v1/central/users";
/* 
public:
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