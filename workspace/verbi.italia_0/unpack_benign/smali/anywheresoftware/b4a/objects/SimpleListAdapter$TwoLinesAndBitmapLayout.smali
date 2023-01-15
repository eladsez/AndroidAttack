.class public Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;
.super Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;
.source "SimpleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoLinesAndBitmapLayout"
.end annotation


# instance fields
.field public ImageView:Lanywheresoftware/b4a/objects/ImageViewWrapper;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "dummyParent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x32

    const/4 v9, 0x5

    const/16 v8, 0x3c

    const/4 v7, -0x1

    .line 169
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;-><init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;)V

    .line 170
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, "t":Landroid/widget/TextView;
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->SecondLabel:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, "t2":Landroid/widget/TextView;
    const/high16 v3, 0x419c0000    # 19.5f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 173
    const/high16 v3, 0x41840000    # 16.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    iput v3, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->itemHeight:I

    .line 175
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    new-instance v3, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    const/4 v5, 0x0

    .line 180
    const/16 v6, 0x1e

    invoke-static {v6}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v7, v6}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    .line 179
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v3, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    .line 182
    const/16 v6, 0x1c

    invoke-static {v6}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v7, v6}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    .line 181
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "iv":Landroid/widget/ImageView;
    new-instance v3, Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/objects/ImageViewWrapper;-><init>()V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->ImageView:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    .line 185
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;->ImageView:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-virtual {v3, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 186
    new-instance v3, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-static {v9}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    invoke-static {v9}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    .line 187
    invoke-static {v10}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v6

    invoke-static {v10}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    .line 186
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method
