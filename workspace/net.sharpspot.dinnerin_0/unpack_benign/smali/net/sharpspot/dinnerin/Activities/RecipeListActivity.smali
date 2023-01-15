.class public Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;
.super Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;
.source "RecipeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity",
        "<",
        "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
        ">;"
    }
.end annotation


# static fields
.field public static MenuKey:Ljava/lang/String;


# instance fields
.field private _menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

.field private _menuKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "MenuKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->MenuKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;-><init>()V

    .line 23
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menuKey:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    .line 19
    return-void
.end method

.method private AddSelectedRecipe(Ljava/lang/String;)V
    .locals 2
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "item":Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;
    invoke-virtual {v0, p1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->setRecipeKey(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->Commit()V

    .line 165
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->RefreshAdapter()V

    .line 166
    return-void
.end method

.method private GetKeyFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 40
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-object v1

    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 40
    goto :goto_0

    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 47
    goto :goto_1
.end method


# virtual methods
.method protected AddItem()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ReturnValue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method protected bridge synthetic DeleteItem(Lnet/sharpspot/dinnerin/Classes/DataClass;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->DeleteItem(Lnet/sharpspot/dinnerin/Classes/RecipeClass;)V

    return-void
.end method

.method protected DeleteItem(Lnet/sharpspot/dinnerin/Classes/RecipeClass;)V
    .locals 4
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .prologue
    .line 139
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;

    .line 143
    .local v0, "menuRecipe":Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->getRecipeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->Delete()V

    .line 147
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->RefreshAdapter()V

    .line 149
    const-string v1, "Item deleted."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected EditItem(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "itemIndex"    # Ljava/lang/Integer;

    .prologue
    .line 130
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->GetListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 132
    .local v1, "item":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "i":Landroid/content/Intent;
    sget-object v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method protected InitializeComponets()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->InitializeComponets()V

    .line 57
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->SetTitle(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected bridge synthetic OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v0

    return-object v0
.end method

.method protected OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected OnGetCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipesByMenuKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/RecipeClass;Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/RecipeClass;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    return-void
.end method

.method protected bridge synthetic OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/RecipeClass;)Z

    move-result v0

    return v0
.end method

.method protected OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/RecipeClass;)Z
    .locals 1
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/RecipeClass;Landroid/app/Dialog;)V

    return-void
.end method

.method protected OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/RecipeClass;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 102
    return-void
.end method

.method protected RefreshAdapter()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    const/4 v1, 0x0

    .line 66
    .local v1, "recipeCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/RecipeClass;>;"
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->OnGetCollection()Ljava/util/List;

    move-result-object v1

    .line 69
    :cond_0
    if-eqz v1, :cond_1

    .line 71
    new-instance v0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;

    .end local v0    # "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    invoke-direct {v0, p0, v1}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 72
    .restart local v0    # "adapter":Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->SetListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    if-eqz p3, :cond_0

    .line 114
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "recipeKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->AddSelectedRecipe(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->MenuKey:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->GetKeyFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menuKey:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menuKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menuKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menu:Lnet/sharpspot/dinnerin/Classes/MenuClass;

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method protected onPrepareContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 179
    const v0, 0x7f05004a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menuKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->MenuKey:Ljava/lang/String;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->_menuKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method
