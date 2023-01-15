.class public Lanywheresoftware/b4a/objects/collections/List;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "List.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$IterableList;


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lanywheresoftware/b4a/BA$IterableList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method private sortList(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "FieldName"    # Ljava/lang/String;
    .param p2, "Ascending"    # Z
    .param p3, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v3

    if-nez v3, :cond_0

    .line 213
    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    :goto_0
    return-void

    .line 192
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "o1":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 194
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List$2;

    invoke-direct {v0, p0, p3, v1, p2}, Lanywheresoftware/b4a/objects/collections/List$2;-><init>(Lanywheresoftware/b4a/objects/collections/List;ZLjava/lang/reflect/Field;Z)V

    .line 212
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public Add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 75
    sget-boolean v1, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "prev":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 79
    const/16 v1, 0x3ea

    invoke-static {v1}, Lanywheresoftware/b4a/BA$WarningEngine;->warn(I)V

    .line 83
    .end local v0    # "prev":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public AddAll(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .param p1, "List"    # Lanywheresoftware/b4a/objects/collections/List;

    .prologue
    .line 92
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-void
.end method

.method public AddAllAt(ILanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .param p1, "Index"    # I
    .param p2, "List"    # Lanywheresoftware/b4a/objects/collections/List;

    .prologue
    .line 98
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 99
    return-void
.end method

.method public Clear()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method public Get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public IndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "Item"    # Ljava/lang/Object;

    .prologue
    .line 135
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public Initialize2(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .param p1, "Array"    # Lanywheresoftware/b4a/objects/collections/List;

    .prologue
    .line 63
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public InsertAt(ILjava/lang/Object;)V
    .locals 0
    .param p1, "Index"    # I
    .param p2, "Item"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public RemoveAt(I)V
    .locals 0
    .param p1, "Index"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public Set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "Index"    # I
    .param p2, "Item"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public Sort(Z)V
    .locals 2
    .param p1, "Ascending"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 153
    :goto_0
    return-void

    .line 146
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lanywheresoftware/b4a/objects/collections/List$1;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/collections/List$1;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public SortCaseInsensitive(Z)V
    .locals 2
    .param p1, "Ascending"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lanywheresoftware/b4a/objects/collections/List$3;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/collections/List$3;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lanywheresoftware/b4a/objects/collections/List$4;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/collections/List$4;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public SortType(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "FieldName"    # Ljava/lang/String;
    .param p2, "Ascending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/collections/List;->sortList(Ljava/lang/String;ZZ)V

    .line 182
    return-void
.end method

.method public SortTypeCaseInsensitive(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "FieldName"    # Ljava/lang/String;
    .param p2, "Ascending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/collections/List;->sortList(Ljava/lang/String;ZZ)V

    .line 188
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/List;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
