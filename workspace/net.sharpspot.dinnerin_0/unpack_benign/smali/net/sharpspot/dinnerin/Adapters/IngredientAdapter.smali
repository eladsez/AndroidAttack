.class public Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;
.super Landroid/widget/BaseAdapter;
.source "IngredientAdapter.java"


# instance fields
.field private _collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;"
        }
    .end annotation
.end field

.field private _context:Landroid/content/Context;


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
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "ingredientCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/IngredientClass;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->_context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->_collection:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->_collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->getItem(I)Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->_collection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "t":Landroid/widget/TextView;
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->_collection:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 30
    .local v0, "Ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->_context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 32
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f050016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "t":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .restart local v1    # "t":Landroid/widget/TextView;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "t":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .restart local v1    # "t":Landroid/widget/TextView;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_1
    const v3, 0x7f050020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "t":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 44
    .restart local v1    # "t":Landroid/widget/TextView;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 47
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 54
    const v3, 0x7f050019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "t":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 55
    .restart local v1    # "t":Landroid/widget/TextView;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_3
    return-object v2

    .line 49
    :cond_4
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
