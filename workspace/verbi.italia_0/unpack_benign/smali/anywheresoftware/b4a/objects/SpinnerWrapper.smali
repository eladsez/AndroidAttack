.class public Lanywheresoftware/b4a/objects/SpinnerWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "SpinnerWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Spinner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;,
        Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;",
        ">;",
        "Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 5
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
    .line 219
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 220
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-static {p3, v3, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 222
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    .line 223
    .local v1, "list":Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;
    const-string v3, "fontsize"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 224
    .local v0, "f":Ljava/lang/Float;
    if-eqz v0, :cond_2

    .line 225
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 226
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    const-string v4, "textColor"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 227
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    const v4, -0xf0701

    if-ne v3, v4, :cond_2

    .line 228
    :cond_1
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    const/4 v4, 0x0

    iput v4, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 230
    :cond_2
    if-eqz p2, :cond_3

    .line 231
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_3
    const-string v3, "prompt"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "prompt":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 237
    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 238
    :cond_4
    return-object v1
.end method


# virtual methods
.method public Add(Ljava/lang/String;)V
    .locals 3
    .param p1, "Item"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 104
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x0

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 111
    return-void

    .line 108
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    :catchall_0
    move-exception v0

    .line 109
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 110
    throw v0
.end method

.method public AddAll(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 3
    .param p1, "List"    # Lanywheresoftware/b4a/objects/collections/List;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 123
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x0

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 128
    return-void

    .line 125
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    :catchall_0
    move-exception v0

    .line 126
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 127
    throw v0
.end method

.method public Clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 158
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, -0x1

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 162
    return-void

    .line 159
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 161
    throw v0
.end method

.method public GetItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RemoveAt(I)V
    .locals 4
    .param p1, "Index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v3, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 143
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getCount()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    sub-int/2addr v1, v3

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 149
    return-void

    .line 146
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    :catchall_0
    move-exception v0

    .line 147
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 148
    throw v0
.end method

.method public getDropdownTextColor()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->dropdownTextColor:I

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v0, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 191
    .local v0, "pixels":F
    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 43
    if-nez p3, :cond_0

    .line 44
    new-instance v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->setObject(Ljava/lang/Object;)V

    .line 46
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-object p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->ba:Lanywheresoftware/b4a/BA;

    .line 48
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-object p2, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->eventName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 51
    return-void
.end method

.method public setDropdownTextColor(I)V
    .locals 1
    .param p1, "Color"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->dropdownTextColor:I

    .line 179
    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const/4 p1, 0x0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setSelection(I)V

    .line 68
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 72
    return-void

    .line 69
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    :catchall_0
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 71
    throw v0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "Color"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 169
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "TextSize"    # F

    .prologue
    .line 187
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/SpinnerWrapper;
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 188
    return-void
.end method
