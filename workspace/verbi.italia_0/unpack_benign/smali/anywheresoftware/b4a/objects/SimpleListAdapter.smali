.class public Lanywheresoftware/b4a/objects/SimpleListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;,
        Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;
    }
.end annotation


# static fields
.field private static final SINGLE_LINE_ITEM:I = 0x0

.field private static final TWO_LINES_AND_BITMAP_ITEM:I = 0x2

.field private static final TWO_LINES_ITEM:I = 0x1


# instance fields
.field public SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

.field public TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

.field public TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

.field public dummyParent:Lanywheresoftware/b4a/BALayout;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private layouts:[Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, p1}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->dummyParent:Lanywheresoftware/b4a/BALayout;

    .line 48
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->dummyParent:Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, v1, v3, v2, v2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;-><init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    .line 49
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->dummyParent:Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, v1, v3, v2, v2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;-><init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    .line 50
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->dummyParent:Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;-><init>(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->layouts:[Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;

    .line 52
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->layouts:[Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    aput-object v1, v0, v3

    .line 53
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->layouts:[Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;

    const/4 v1, 0x1

    iget-object v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    aput-object v2, v0, v1

    .line 54
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->layouts:[Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;

    const/4 v1, 0x2

    iget-object v2, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    aput-object v2, v0, v1

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SimpleListAdapter;
    check-cast p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;

    invoke-interface {p0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SimpleListAdapter;
    check-cast p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;

    invoke-interface {p0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;

    .line 84
    .local v2, "item":Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;
    if-nez p2, :cond_0

    .line 85
    new-instance v1, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "bl":Lanywheresoftware/b4a/BALayout;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->layouts:[Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;

    invoke-interface {v2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;->getItemHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/BALayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-interface {v2, v1, p0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;->addNewToLayout(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    .line 88
    move-object p2, v1

    .line 90
    .end local v1    # "bl":Lanywheresoftware/b4a/BALayout;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-interface {v2, v3, p0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;->updateExisting(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    .line 91
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    return v0
.end method
