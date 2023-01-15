.class public Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;
.super Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
.source "SimpleListAdapter.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoLinesData"
.end annotation


# instance fields
.field public SecondLineText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;-><init>()V

    return-void
.end method


# virtual methods
.method public addNewToLayout(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Lanywheresoftware/b4a/objects/SimpleListAdapter;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->Background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-super {p0, p1, v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->addNewToLayoutImpl(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 237
    iget-object v0, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;->SecondLabel:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-super {p0, p1, v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->addNewToLayoutImpl(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 238
    return-void
.end method

.method public getType()I
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public updateExisting(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Lanywheresoftware/b4a/objects/SimpleListAdapter;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->updateExisting(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->SecondLineText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method
