.class public Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
.super Ljava/lang/Object;
.source "SimpleListAdapter.java"

# interfaces
.implements Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SimpleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLineData"
.end annotation


# instance fields
.field public ReturnValue:Ljava/lang/Object;

.field public Text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 198
    iget-object v0, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->Background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p2, Lanywheresoftware/b4a/objects/SimpleListAdapter;->SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;->Label:Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->addNewToLayoutImpl(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 200
    return-void
.end method

.method protected addNewToLayoutImpl(Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "model"    # Landroid/widget/TextView;

    .prologue
    .line 202
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    invoke-virtual {p2}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    return-void
.end method

.method public getReturnValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->ReturnValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->ReturnValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getType()I
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public updateExisting(Landroid/view/ViewGroup;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Lanywheresoftware/b4a/objects/SimpleListAdapter;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method
