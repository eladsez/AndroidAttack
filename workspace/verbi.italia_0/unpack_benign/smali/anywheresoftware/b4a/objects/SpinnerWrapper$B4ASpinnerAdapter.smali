.class public Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpinnerWrapper.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SpinnerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "B4ASpinnerAdapter"
.end annotation


# instance fields
.field public dropdownTextColor:I

.field private inflater:Landroid/view/LayoutInflater;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public textColor:I

.field public textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    .line 244
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 245
    iput v1, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 246
    iput v1, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->dropdownTextColor:I

    .line 248
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 249
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 269
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 271
    iget v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    if-eqz v3, :cond_1

    iget v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->dropdownTextColor:I

    if-nez v3, :cond_1

    .line 272
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    :cond_0
    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 277
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 278
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 279
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_1
    return-object p2

    .line 273
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_1
    iget v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->dropdownTextColor:I

    if-eqz v3, :cond_0

    .line 274
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->dropdownTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 281
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 262
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 286
    if-nez p2, :cond_0

    .line 287
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 288
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 289
    iget v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    if-eqz v3, :cond_0

    .line 290
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 293
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 294
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 295
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_0
    return-object p2

    .line 297
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
