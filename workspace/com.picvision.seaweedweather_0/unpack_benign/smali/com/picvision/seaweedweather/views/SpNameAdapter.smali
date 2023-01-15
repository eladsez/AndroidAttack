.class public Lcom/picvision/seaweedweather/views/SpNameAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpNameAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private spList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Sp;",
            ">;"
        }
    .end annotation
.end field

.field private spname:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Sp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->spList:Ljava/util/List;

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 25
    .local v1, "splistsize":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->spname:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void

    .line 27
    :cond_0
    iget-object v3, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->spname:[Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picvision/seaweedweather/model/Sp;

    invoke-virtual {v2}, Lcom/picvision/seaweedweather/model/Sp;->getSpName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->spname:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->spname:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    .local v0, "spname":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/picvision/seaweedweather/views/SpNameAdapter;->spname:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-object v1
.end method
