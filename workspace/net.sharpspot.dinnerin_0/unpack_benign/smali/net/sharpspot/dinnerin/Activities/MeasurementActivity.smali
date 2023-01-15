.class public Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;
.super Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;
.source "MeasurementActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sharpspot/dinnerin/Activities/ListManagementActivity",
        "<",
        "Lnet/sharpspot/dinnerin/Classes/MeasurementClass;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;-><init>()V

    return-void
.end method

.method private getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    check-cast p1, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v0, 0x7f05001b

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected GetDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected InitializeComponets()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->InitializeComponets()V

    .line 21
    const-string v0, "Measurements"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->SetTitle(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected bridge synthetic OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;Landroid/content/DialogInterface;)Z

    move-result v0

    return v0
.end method

.method protected OnAllowSave(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;Landroid/content/DialogInterface;)Z
    .locals 4
    .param p1, "originalItem"    # Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    const-string v2, "Name"

    const-string v3, "tMeasurement"

    invoke-virtual {p0, p1, v2, v3, v0}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->IsDuplicateName(Lnet/sharpspot/dinnerin/Classes/DataClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-super {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/DataClass;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v0

    return-object v0
.end method

.method protected OnCreateNewItem()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected OnGetCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MeasurementClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->GetMeasurements(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "editedItem"    # Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "view":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setName(Ljava/lang/String;)V

    move-object v1, p2

    .line 40
    check-cast v1, Lnet/sharpspot/dinnerin/CustomDialog;

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setShortName(Ljava/lang/String;)V

    move-object v1, p2

    .line 43
    check-cast v1, Lnet/sharpspot/dinnerin/CustomDialog;

    const v2, 0x7f05001d

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setAliases(Ljava/lang/String;)V

    .line 46
    check-cast p2, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p2    # "dialog":Landroid/content/DialogInterface;
    const v1, 0x7f05001e

    invoke-virtual {p2, v1}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setGrams(Ljava/lang/Float;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected bridge synthetic OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/DataClass;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;)Z

    move-result v0

    return v0
.end method

.method protected OnIsItemInUse(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;)Z
    .locals 1
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    .prologue
    .line 74
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetIngredientsByMeasurementKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

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
    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;Landroid/app/Dialog;)V

    return-void
.end method

.method protected OnSetDataToDialog(Lnet/sharpspot/dinnerin/Classes/MeasurementClass;Landroid/app/Dialog;)V
    .locals 3
    .param p1, "item"    # Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "view":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Activities/MeasurementActivity;->getNameView(Landroid/content/DialogInterface;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v1, 0x7f05001c

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v1, 0x7f05001d

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getAliases()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v1, 0x7f05001e

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getGrams()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getGrams()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
