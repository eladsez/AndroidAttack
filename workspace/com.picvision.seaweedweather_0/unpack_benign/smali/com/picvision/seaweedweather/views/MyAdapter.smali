.class public Lcom/picvision/seaweedweather/views/MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAdapter.java"


# instance fields
.field private context:Lcom/picvision/seaweedweather/main;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/picvision/seaweedweather/main;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Lcom/picvision/seaweedweather/main;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/picvision/seaweedweather/main;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "mData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->context:Lcom/picvision/seaweedweather/main;

    .line 36
    iput-object p2, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mData:Ljava/util/List;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/views/MyAdapter;)Lcom/picvision/seaweedweather/main;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->context:Lcom/picvision/seaweedweather/main;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 57
    iget-object v4, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "v":Landroid/view/View;
    const v4, 0x7f090001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    .local v3, "value":Landroid/widget/TextView;
    const v4, 0x7f090002

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "cityvalue":Landroid/widget/TextView;
    const v4, 0x7f090003

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 61
    .local v1, "imgbutton":Landroid/widget/ImageButton;
    iget-object v4, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "city_setting"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p0, Lcom/picvision/seaweedweather/views/MyAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "img"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 64
    invoke-virtual {v2, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    new-instance v4, Lcom/picvision/seaweedweather/views/MyAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/picvision/seaweedweather/views/MyAdapter$1;-><init>(Lcom/picvision/seaweedweather/views/MyAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    return-object v2
.end method
