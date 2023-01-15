.class public Lanywheresoftware/b4a/objects/ListViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ListViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 9
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
    .line 240
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 241
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v7, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-static {p3, v7, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 243
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 244
    .local v4, "list":Landroid/widget/ListView;
    const-string v7, "drawable"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 245
    .local v2, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    invoke-static {v4, v2, p2, v7}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 246
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_1
    const-string v7, "fastScrollEnabled"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 249
    if-eqz p2, :cond_2

    .line 250
    move-object v0, v4

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    move-object v6, v0

    .line 251
    .local v6, "slv":Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    iget-object v7, v6, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v7, v7, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 252
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v7, 0xa

    if-le v3, v7, :cond_3

    .line 257
    iget-object v7, v6, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v7}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 260
    .end local v3    # "i":I
    .end local v6    # "slv":Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    :cond_2
    return-object v4

    .line 253
    .restart local v3    # "i":I
    .restart local v6    # "slv":Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    :cond_3
    new-instance v5, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;

    invoke-direct {v5}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;-><init>()V

    .line 254
    .local v5, "s":Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Item #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    .line 255
    iget-object v7, v6, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v7, v7, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public AddSingleLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->AddSingleLine2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public AddSingleLine2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "ReturnValue"    # Ljava/lang/Object;

    .prologue
    .line 130
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;-><init>()V

    .line 131
    .local v0, "sl":Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    .line 132
    iput-object p2, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->ReturnValue:Ljava/lang/Object;

    .line 133
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V

    .line 134
    return-void
.end method

.method public AddTwoLines(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Text1"    # Ljava/lang/String;
    .param p2, "Text2"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->AddTwoLines2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public AddTwoLines2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "Text1"    # Ljava/lang/String;
    .param p2, "Text2"    # Ljava/lang/String;
    .param p3, "ReturnValue"    # Ljava/lang/Object;

    .prologue
    .line 148
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;-><init>()V

    .line 149
    .local v0, "t":Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->Text:Ljava/lang/String;

    .line 150
    iput-object p3, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->ReturnValue:Ljava/lang/Object;

    .line 151
    iput-object p2, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->SecondLineText:Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V

    .line 153
    return-void
.end method

.method public AddTwoLinesAndBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "Text1"    # Ljava/lang/String;
    .param p2, "Text2"    # Ljava/lang/String;
    .param p3, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->AddTwoLinesAndBitmap2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public AddTwoLinesAndBitmap2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1
    .param p1, "Text1"    # Ljava/lang/String;
    .param p2, "Text2"    # Ljava/lang/String;
    .param p3, "Bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "ReturnValue"    # Ljava/lang/Object;

    .prologue
    .line 167
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;-><init>()V

    .line 168
    .local v0, "t":Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Text:Ljava/lang/String;

    .line 169
    iput-object p4, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->ReturnValue:Ljava/lang/Object;

    .line 170
    iput-object p2, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->SecondLineText:Ljava/lang/String;

    .line 171
    iput-object p3, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Bitmap:Landroid/graphics/Bitmap;

    .line 172
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V

    .line 173
    return-void
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 199
    return-void
.end method

.method public GetItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RemoveAt(I)V
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 192
    return-void
.end method

.method public SetSelection(I)V
    .locals 0
    .param p1, "Position"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setSelection(I)V

    .line 226
    return-void
.end method

.method public add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V
    .locals 1
    .param p1, "si"    # Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method public getFastScrollEnabled()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public getSingleLineLayout()Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTwoLinesAndBitmap()Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    return-object v0
.end method

.method public getTwoLinesLayout()Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    return-object v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 45
    if-nez p3, :cond_0

    .line 46
    new-instance v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "s":Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 49
    .end local v0    # "s":Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_itemclick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    new-instance v2, Lanywheresoftware/b4a/objects/ListViewWrapper$1;

    invoke-direct {v2, p0, p1, p2}, Lanywheresoftware/b4a/objects/ListViewWrapper$1;-><init>(Lanywheresoftware/b4a/objects/ListViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_itemlongclick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    new-instance v2, Lanywheresoftware/b4a/objects/ListViewWrapper$2;

    invoke-direct {v2, p0, p1, p2}, Lanywheresoftware/b4a/objects/ListViewWrapper$2;-><init>(Lanywheresoftware/b4a/objects/ListViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 75
    :cond_2
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .param p1, "Enabled"    # Z

    .prologue
    .line 205
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setFastScrollEnabled(Z)V

    .line 206
    return-void
.end method

.method public setScrollingBackgroundColor(I)V
    .locals 0
    .param p1, "Color"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setCacheColorHint(I)V

    .line 218
    return-void
.end method
