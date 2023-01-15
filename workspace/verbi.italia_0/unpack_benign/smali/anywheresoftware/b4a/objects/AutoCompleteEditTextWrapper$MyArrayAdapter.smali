.class public Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoCompleteEditTextWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field gravity:I

.field textColor:I

.field textSize:F

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;FLandroid/graphics/Typeface;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "textSize"    # F
    .param p4, "typeface"    # Landroid/graphics/Typeface;
    .param p5, "gravity"    # I
    .param p6, "textColor"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    iput-object p4, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->typeface:Landroid/graphics/Typeface;

    .line 182
    iput p6, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->textColor:I

    .line 183
    iput p3, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->textSize:F

    .line 184
    iput p5, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->gravity:I

    .line 185
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, -0x1

    .line 189
    if-nez p2, :cond_0

    .line 190
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v2, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/16 v3, 0xa

    invoke-static {v3}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v1

    .line 193
    .local v1, "p":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    iget v3, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget v3, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->textSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    iget-object v3, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    iget v3, p0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    .end local v1    # "p":I
    :goto_0
    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-object v2

    .line 200
    .end local v2    # "tv":Landroid/widget/TextView;
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .restart local v2    # "tv":Landroid/widget/TextView;
    goto :goto_0
.end method
