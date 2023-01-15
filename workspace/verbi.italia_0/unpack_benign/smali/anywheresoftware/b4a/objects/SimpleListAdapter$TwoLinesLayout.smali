.class public Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;
.super Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;
.source "SimpleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoLinesLayout"
.end annotation


# instance fields
.field public SecondLabel:Lanywheresoftware/b4a/objects/LabelWrapper;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 8
    .param p1, "dummyParent"    # Landroid/view/ViewGroup;
    .param p2, "dontSetLayout"    # Z

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    .line 142
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;-><init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;)V

    .line 143
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, "t2":Landroid/widget/TextView;
    new-instance v2, Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/LabelWrapper;-><init>()V

    iput-object v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->SecondLabel:Lanywheresoftware/b4a/objects/LabelWrapper;

    .line 145
    iget-object v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->SecondLabel:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v2, v1}, Lanywheresoftware/b4a/objects/LabelWrapper;->setObject(Ljava/lang/Object;)V

    .line 146
    if-nez p2, :cond_0

    .line 147
    iget-object v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, "t":Landroid/widget/TextView;
    const/high16 v2, 0x419c0000    # 19.5f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    const/high16 v2, 0x41840000    # 16.5f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    const/16 v2, 0x3c

    invoke-static {v2}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    iput v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->itemHeight:I

    .line 151
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    new-instance v2, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-static {v7}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    const/4 v4, 0x0

    .line 156
    const/16 v5, 0x1e

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v6, v5}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    .line 155
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v2, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-static {v7}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v4}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    .line 158
    const/16 v5, 0x1c

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v6, v5}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    .line 157
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .end local v0    # "t":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;-><init>(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;-><init>(Landroid/view/ViewGroup;Z)V

    return-void
.end method
