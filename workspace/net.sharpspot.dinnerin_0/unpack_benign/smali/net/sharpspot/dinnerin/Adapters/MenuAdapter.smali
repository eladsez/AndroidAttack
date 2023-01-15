.class public Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field private _collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuClass;",
            ">;"
        }
    .end annotation
.end field

.field private _context:Landroid/content/Context;

.field private _textViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "MenuCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/MenuClass;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter$1;-><init>(Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_collection:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->getItem(I)Lnet/sharpspot/dinnerin/Classes/MenuClass;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/sharpspot/dinnerin/Classes/MenuClass;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_collection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "t":Landroid/widget/TextView;
    iget-object v4, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_collection:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    .line 33
    .local v1, "menu":Lnet/sharpspot/dinnerin/Classes/MenuClass;
    iget-object v4, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 35
    .local v3, "v":Landroid/view/View;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "t":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .restart local v2    # "t":Landroid/widget/TextView;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v4, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 42
    return-object v3
.end method
