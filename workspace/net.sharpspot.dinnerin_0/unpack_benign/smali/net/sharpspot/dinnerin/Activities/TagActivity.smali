.class public Lnet/sharpspot/dinnerin/Activities/TagActivity;
.super Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;
.source "TagActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity",
        "<",
        "Lnet/sharpspot/dinnerin/Classes/TagClass;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;-><init>()V

    return-void
.end method

.method private getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
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
    .line 16
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->InitializeComponets()V

    .line 18
    const-string v0, "Tags"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->SetTitle(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method protected bridge synthetic OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/TagClass;Landroid/content/DialogInterface;)Z

    move-result v0

    return v0
.end method

.method protected OnAllowSave(Lnet/sharpspot/dinnerin/Classes/TagClass;Landroid/content/DialogInterface;)Z
    .locals 4
    .param p1, "originalItem"    # Lnet/sharpspot/dinnerin/Classes/TagClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    const-string v2, "Name"

    const-string v3, "tTag"

    invoke-virtual {p0, p1, v2, v3, v0}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->IsDuplicateName(Lnet/sharpspot/dinnerin/Classes/DataClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v0

    return-object v0
.end method

.method protected OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/TagClass;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected OnGetCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/TagClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->GetTags(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/TagClass;Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/TagClass;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "editedItem"    # Lnet/sharpspot/dinnerin/Classes/TagClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->setName(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected bridge synthetic OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/TagClass;)Z

    move-result v0

    return v0
.end method

.method protected OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/TagClass;)Z
    .locals 1
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/TagClass;

    .prologue
    .line 43
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipesByTagKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/TagClass;Landroid/app/Dialog;)V

    return-void
.end method

.method protected OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/TagClass;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/TagClass;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/TagActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
