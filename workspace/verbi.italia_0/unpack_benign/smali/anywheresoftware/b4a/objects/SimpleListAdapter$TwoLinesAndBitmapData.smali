.class public Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;
.super Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;
.source "SimpleListAdapter.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoLinesAndBitmapData"
.end annotation


# instance fields
.field public Bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;-><init>()V

    return-void
.end method


# virtual methods
.method public addNewToLayout(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Lanywheresoftware/b4a/objects/SimpleListAdapter;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 257
    iget-object v2, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    iget-object v2, v2, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->Background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v2, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    iget-object v2, v2, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-super {p0, p1, v2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->addNewToLayoutImpl(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 259
    iget-object v2, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    iget-object v2, v2, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->SecondLabel:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-super {p0, p1, v2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->addNewToLayoutImpl(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 260
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v2, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    iget-object v2, v2, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->ImageView:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 262
    .local v1, "model":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    return-void
.end method

.method public getType()I
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x2

    return v0
.end method

.method public updateExisting(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Lanywheresoftware/b4a/objects/SimpleListAdapter;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->updateExisting(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    .line 269
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 270
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_0
    return-void

    .line 270
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
