.class public Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;
.super Lanywheresoftware/b4a/objects/EditTextWrapper;
.source "AutoCompleteEditTextWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "AutoCompleteEditText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p0, "prev"    # Ljava/lang/Object;
    .param p2, "designer"    # Z
    .param p3, "tag"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 167
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    const-class v3, Landroid/widget/AutoCompleteTextView;

    invoke-static {v2, v3, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 171
    .local v1, "v":Landroid/widget/AutoCompleteTextView;
    :goto_0
    invoke-static {v1, p1, p2, p3}, Lanywheresoftware/b4a/objects/EditTextWrapper;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 170
    .end local v1    # "v":Landroid/widget/AutoCompleteTextView;
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    move-object v1, v0

    .restart local v1    # "v":Landroid/widget/AutoCompleteTextView;
    goto :goto_0
.end method


# virtual methods
.method public DismissDropDown()V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 161
    .local v0, "a":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 162
    return-void
.end method

.method public SetItems(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 8
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Items"    # Lanywheresoftware/b4a/objects/collections/List;

    .prologue
    .line 130
    new-instance v0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getGravity()I

    move-result v5

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getTextColor()I

    move-result v6

    .line 130
    invoke-direct/range {v0 .. v6}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;FLandroid/graphics/Typeface;II)V

    .line 132
    .local v0, "aa":Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    .line 133
    .local v7, "a":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v7, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method

.method public SetItems2(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/objects/collections/List;Landroid/graphics/Typeface;IFI)V
    .locals 8
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Items"    # Lanywheresoftware/b4a/objects/collections/List;
    .param p3, "Typeface"    # Landroid/graphics/Typeface;
    .param p4, "Gravity"    # I
    .param p5, "TextSize"    # F
    .param p6, "TextColor"    # I

    .prologue
    .line 144
    new-instance v0, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, p5

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;FLandroid/graphics/Typeface;II)V

    .line 146
    .local v0, "aa":Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$MyArrayAdapter;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    .line 147
    .local v7, "a":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v7, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method public ShowDropDown()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 154
    .local v0, "a":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 155
    return-void
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 101
    iput-object p1, p0, Lanywheresoftware/b4a/objects/EditTextWrapper;->ba:Lanywheresoftware/b4a/BA;

    .line 102
    if-nez p3, :cond_0

    .line 104
    new-instance v1, Landroid/widget/AutoCompleteTextView;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->setObject(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 106
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 108
    :cond_0
    invoke-super {p0, p1, p2, v3}, Lanywheresoftware/b4a/objects/EditTextWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 111
    .local v0, "a":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v3, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 113
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 114
    new-instance v1, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper$1;-><init>(Lanywheresoftware/b4a/objects/AutoCompleteEditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-void
.end method
