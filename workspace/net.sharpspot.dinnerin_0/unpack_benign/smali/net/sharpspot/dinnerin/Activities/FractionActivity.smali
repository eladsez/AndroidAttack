.class public Lnet/sharpspot/dinnerin/Activities/FractionActivity;
.super Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;
.source "FractionActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity",
        "<",
        "Lnet/sharpspot/dinnerin/Classes/FractionClass;",
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
    .line 66
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
    const-string v0, "Fractions"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->SetTitle(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method protected bridge synthetic OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/FractionClass;Landroid/content/DialogInterface;)Z

    move-result v0

    return v0
.end method

.method protected OnAllowSave(Lnet/sharpspot/dinnerin/Classes/FractionClass;Landroid/content/DialogInterface;)Z
    .locals 4
    .param p1, "originalItem"    # Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    invoke-static {v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->GetValueFromName(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 55
    const-string v2, "Invalid fraction."

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "Name"

    const-string v3, "tFraction"

    invoke-virtual {p0, p1, v2, v3, v0}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->IsDuplicateName(Lnet/sharpspot/dinnerin/Classes/DataClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-super {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v0

    return-object v0
.end method

.method protected OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected OnGetCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/FractionClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->GetFractions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/FractionClass;Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/FractionClass;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "editedItem"    # Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->setName(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected bridge synthetic OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/FractionClass;)Z

    move-result v0

    return v0
.end method

.method protected OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/FractionClass;)Z
    .locals 1
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/FractionClass;

    .prologue
    .line 44
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetIngredientsByFractionKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

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
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/FractionClass;Landroid/app/Dialog;)V

    return-void
.end method

.method protected OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/FractionClass;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/FractionActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
