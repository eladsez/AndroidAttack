.class public Lnet/sharpspot/dinnerin/Activities/MenuActivity;
.super Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity",
        "<",
        "Lnet/sharpspot/dinnerin/Classes/MenuClass;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;-><init>()V

    return-void
.end method

.method private getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 73
    check-cast p1, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected InitializeComponets()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->InitializeComponets()V

    .line 19
    const-string v0, "Menus"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->SetTitle(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method protected bridge synthetic OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/MenuClass;Landroid/content/DialogInterface;)Z

    move-result v0

    return v0
.end method

.method protected OnAllowSave(Lnet/sharpspot/dinnerin/Classes/MenuClass;Landroid/content/DialogInterface;)Z
    .locals 4
    .param p1, "originalItem"    # Lnet/sharpspot/dinnerin/Classes/MenuClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    const-string v2, "Name"

    const-string v3, "tMenu"

    invoke-virtual {p0, p1, v2, v3, v0}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->IsDuplicateName(Lnet/sharpspot/dinnerin/Classes/DataClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/MenuClass;

    move-result-object v0

    return-object v0
.end method

.method protected OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/MenuClass;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected OnGetCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->GetMenus(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/MenuClass;Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/MenuClass;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "editedItem"    # Lnet/sharpspot/dinnerin/Classes/MenuClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->setName(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public OnImageClick(Lnet/sharpspot/dinnerin/Classes/MenuClass;)V
    .locals 3
    .param p1, "menu"    # Lnet/sharpspot/dinnerin/Classes/MenuClass;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeListActivity;->MenuKey:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected bridge synthetic OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/MenuClass;)Z

    move-result v0

    return v0
.end method

.method protected OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/MenuClass;)Z
    .locals 1
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/MenuClass;

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/MenuClass;Landroid/app/Dialog;)V

    return-void
.end method

.method protected OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/MenuClass;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/MenuClass;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method protected RefreshAdapter()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnGetCollection()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->SetListAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    return-void
.end method
