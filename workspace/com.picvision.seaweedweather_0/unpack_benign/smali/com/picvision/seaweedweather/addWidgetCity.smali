.class public Lcom/picvision/seaweedweather/addWidgetCity;
.super Landroid/app/Activity;
.source "addWidgetCity.java"


# instance fields
.field private city:Landroid/widget/Spinner;

.field private cityAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation
.end field

.field private cityPosition:I

.field private province:Landroid/widget/Spinner;

.field private provinceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provinceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/addWidgetCity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/picvision/seaweedweather/addWidgetCity;->province:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1(Lcom/picvision/seaweedweather/addWidgetCity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/picvision/seaweedweather/addWidgetCity;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/picvision/seaweedweather/addWidgetCity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/picvision/seaweedweather/addWidgetCity;->city:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$4(Lcom/picvision/seaweedweather/addWidgetCity;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityPosition:I

    return-void
.end method

.method static synthetic access$5(Lcom/picvision/seaweedweather/addWidgetCity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/picvision/seaweedweather/addWidgetCity;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityPosition:I

    return v0
.end method


# virtual methods
.method public getCitys(I)Ljava/util/List;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityList:Ljava/util/List;

    .line 150
    iget-object v2, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picvision/seaweedweather/model/Province;

    invoke-virtual {v2}, Lcom/picvision/seaweedweather/model/Province;->getCitys()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityList:Ljava/util/List;

    .line 151
    iget-object v2, p0, Lcom/picvision/seaweedweather/addWidgetCity;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    return-object v1

    .line 151
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picvision/seaweedweather/model/Citys;

    .line 152
    .local v0, "city":Lcom/picvision/seaweedweather/model/Citys;
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Citys;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, "shift_citys":Landroid/view/View;
    const v4, 0x7f090032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->city:Landroid/widget/Spinner;

    .line 50
    const v4, 0x7f090030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->province:Landroid/widget/Spinner;

    .line 51
    invoke-static {}, Lcom/picvision/seaweedweather/utils/Util;->getProvince()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceList:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceAdapter:Landroid/widget/ArrayAdapter;

    .line 58
    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 59
    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->province:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/picvision/seaweedweather/addWidgetCity;->provinceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 61
    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity;->province:Landroid/widget/Spinner;

    new-instance v5, Lcom/picvision/seaweedweather/addWidgetCity$1;

    invoke-direct {v5, p0}, Lcom/picvision/seaweedweather/addWidgetCity$1;-><init>(Lcom/picvision/seaweedweather/addWidgetCity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    const v5, 0x7f06001d

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/addWidgetCity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 98
    const v5, 0x7f06001f

    new-instance v6, Lcom/picvision/seaweedweather/addWidgetCity$2;

    invoke-direct {v6, p0}, Lcom/picvision/seaweedweather/addWidgetCity$2;-><init>(Lcom/picvision/seaweedweather/addWidgetCity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 104
    const v5, 0x7f06001e

    new-instance v6, Lcom/picvision/seaweedweather/addWidgetCity$3;

    invoke-direct {v6, p0}, Lcom/picvision/seaweedweather/addWidgetCity$3;-><init>(Lcom/picvision/seaweedweather/addWidgetCity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 137
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 138
    return-void

    .line 53
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picvision/seaweedweather/model/Province;

    .line 54
    .local v2, "province":Lcom/picvision/seaweedweather/model/Province;
    invoke-virtual {v2}, Lcom/picvision/seaweedweather/model/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v5, "ProvinceList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    const-string v0, "cancle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/addWidgetCity;->finish()V

    .line 163
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
