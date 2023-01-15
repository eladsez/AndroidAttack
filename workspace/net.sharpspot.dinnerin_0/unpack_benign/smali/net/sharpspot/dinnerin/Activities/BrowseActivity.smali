.class public Lnet/sharpspot/dinnerin/Activities/BrowseActivity;
.super Landroid/app/Activity;
.source "BrowseActivity.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "All"

.field public static final RETURN_VALUE:Ljava/lang/String; = "ReturnValue"

.field public static final TAG_NAME:Ljava/lang/String; = "TagName"


# instance fields
.field private _lstRecipes:Landroid/widget/ListView;

.field private _lstTags:Landroid/widget/ListView;

.field private _needToReturnValue:Ljava/lang/Boolean;

.field private _recipeItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private _selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

.field private _tagItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private _viewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 28
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstTags:Landroid/widget/ListView;

    .line 29
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstRecipes:Landroid/widget/ListView;

    .line 30
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_needToReturnValue:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 84
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_tagItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 98
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;-><init>(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_recipeItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 21
    return-void
.end method

.method private GetSavedTag(Landroid/os/Bundle;)Lnet/sharpspot/dinnerin/Classes/TagClass;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    if-eqz p1, :cond_1

    const-string v2, "TagName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "tagName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 184
    const-string v2, "All"

    if-ne v1, v2, :cond_2

    .line 185
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .end local v0    # "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    const-string v2, "All"

    invoke-direct {v0, p0, v2}, Lnet/sharpspot/dinnerin/Classes/TagClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    .restart local v0    # "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    :cond_0
    :goto_1
    return-object v0

    .line 180
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    .restart local v1    # "tagName":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->GetTagByName(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v0

    goto :goto_1
.end method

.method private InitializeComponets()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_needToReturnValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "Choose Recipe"

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->SetTitle(Ljava/lang/String;)V

    .line 56
    :goto_0
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 57
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstTags:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstTags:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_tagItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstRecipes:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstRecipes:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_recipeItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void

    .line 54
    :cond_0
    const-string v0, "Browse"

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->SetTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private LoadRecipes(Lnet/sharpspot/dinnerin/Classes/TagClass;)V
    .locals 4
    .param p1, "tag"    # Lnet/sharpspot/dinnerin/Classes/TagClass;

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "recipeCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/RecipeClass;>;"
    const/4 v0, 0x0

    .line 142
    .local v0, "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 144
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "All"

    if-ne v2, v3, :cond_0

    .line 145
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 149
    :goto_0
    new-instance v0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;

    .end local v0    # "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    invoke-direct {v0, p0, v1}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 151
    .restart local v0    # "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstRecipes:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipesByTagKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private LoadTags()V
    .locals 4

    .prologue
    .line 157
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->GetDistinctRecipeTags(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    const/4 v2, 0x0

    const-string v3, "All"

    invoke-static {p0, v3}, Lnet/sharpspot/dinnerin/Classes/TagClass;->CreateTag(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03000f

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 162
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstTags:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    return-void
.end method

.method private NeedToReturnValue(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    if-eqz p1, :cond_1

    const-string v3, "ReturnValue"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 70
    .local v1, "returnValue":Ljava/lang/Boolean;
    :goto_0
    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v2, "ReturnValue"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 78
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_1
    if-nez v1, :cond_3

    .line 79
    const/4 v2, 0x0

    .line 81
    :goto_2
    return v2

    .end local v1    # "returnValue":Ljava/lang/Boolean;
    :cond_1
    move-object v1, v2

    .line 68
    goto :goto_0

    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    move-object v1, v2

    .line 75
    goto :goto_1

    .line 81
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2
.end method

.method private SetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 210
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method static synthetic access$0(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;Lnet/sharpspot/dinnerin/Classes/TagClass;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->LoadRecipes(Lnet/sharpspot/dinnerin/Classes/TagClass;)V

    return-void
.end method

.method static synthetic access$1(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_viewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$2(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->SetTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_needToReturnValue:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_lstTags:Landroid/widget/ListView;

    if-ne v0, v1, :cond_0

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 128
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 130
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_needToReturnValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "Choose Recipe"

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->SetTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "Browse"

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->SetTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->GetSavedTag(Landroid/os/Bundle;)Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 41
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->NeedToReturnValue(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_needToReturnValue:Ljava/lang/Boolean;

    .line 43
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->InitializeComponets()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->LoadTags()V

    .line 200
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->LoadRecipes(Lnet/sharpspot/dinnerin/Classes/TagClass;)V

    .line 203
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_viewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 206
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "TagName"

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_selectedTag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    const-string v0, "ReturnValue"

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->_needToReturnValue:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method
