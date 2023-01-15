.class public Lnet/sharpspot/dinnerin/Activities/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# instance fields
.field private _itemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private _recipeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    .line 78
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/SearchActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/SearchActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_itemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 17
    return-void
.end method

.method private GetSavedSearch(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private HandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "recipeName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->SearchRecipes(Ljava/lang/String;)V

    .line 60
    .end local v0    # "recipeName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private InitializeComponets()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->SetTitle(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_itemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    return-void
.end method

.method private SearchRecipes(Ljava/lang/String;)V
    .locals 2
    .param p1, "recipeName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    .line 72
    invoke-static {p0, p1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipesByName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "recipeCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/RecipeClass;>;"
    new-instance v0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;

    invoke-direct {v0, p0, v1}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 75
    .local v0, "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method

.method private SetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 110
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->GetSavedSearch(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->HandleIntent(Landroid/content/Intent;)V

    .line 36
    :goto_0
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->InitializeComponets()V

    .line 37
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->SearchRecipes(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 50
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->HandleIntent(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->SearchRecipes(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "query"

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/SearchActivity;->_recipeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
