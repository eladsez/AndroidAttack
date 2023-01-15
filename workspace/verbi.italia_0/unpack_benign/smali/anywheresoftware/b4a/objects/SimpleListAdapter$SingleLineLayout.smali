.class public Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;
.super Ljava/lang/Object;
.source "SimpleListAdapter.java"

# interfaces
.implements Lanywheresoftware/b4a/objects/SimpleListAdapter$ItemLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLineLayout"
.end annotation


# instance fields
.field public Background:Landroid/graphics/drawable/Drawable;

.field public Label:Lanywheresoftware/b4a/objects/LabelWrapper;

.field protected itemHeight:I


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "dummyParent"    # Landroid/view/ViewGroup;
    .param p2, "dontSetLayout"    # Z

    .prologue
    const/4 v4, -0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "t":Landroid/widget/TextView;
    new-instance v1, Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/LabelWrapper;-><init>()V

    iput-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    .line 115
    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->setObject(Ljava/lang/Object;)V

    .line 116
    if-nez p2, :cond_0

    .line 117
    const/high16 v1, 0x41b40000    # 22.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const/16 v1, 0x32

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v1

    iput v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->itemHeight:I

    .line 120
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    new-instance v1, Lanywheresoftware/b4a/BALayout$LayoutParams;

    const/4 v2, 0x5

    invoke-static {v2}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    const/4 v3, 0x0

    .line 122
    invoke-direct {v1, v2, v3, v4, v4}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;-><init>(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;ZLanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;-><init>(Landroid/view/ViewGroup;Z)V

    return-void
.end method


# virtual methods
.method public getItemHeight()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->itemHeight:I

    return v0
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "Height"    # I

    .prologue
    .line 133
    iput p1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->itemHeight:I

    .line 134
    return-void
.end method
