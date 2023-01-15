.class public Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecipeAdapter.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private _recipeCol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "recipeCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/RecipeClass;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->_context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->_recipeCol:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->_recipeCol:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->getItem(I)Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->_recipeCol:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    iget-object v4, p0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->_recipeCol:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 30
    .local v1, "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    iget-object v4, p0, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;->_context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f050040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    .local v2, "t":Landroid/widget/TextView;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v4, 0x7f050041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "t":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .restart local v2    # "t":Landroid/widget/TextView;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v4, 0x7f050042

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "t":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 39
    .restart local v2    # "t":Landroid/widget/TextView;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v4, 0x7f05003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .local v0, "i":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    :cond_0
    return-object v3
.end method
