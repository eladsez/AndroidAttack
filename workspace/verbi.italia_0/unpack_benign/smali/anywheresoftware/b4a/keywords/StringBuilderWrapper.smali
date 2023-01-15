.class public Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "StringBuilderWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4aDebuggable;


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "StringBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;",
        "Lanywheresoftware/b4a/BA$B4aDebuggable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    .locals 1
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    return-object p0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->setObject(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public Insert(ILjava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    .locals 1
    .param p1, "Offset"    # I
    .param p2, "Text"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    return-object p0
.end method

.method public Remove(II)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    .locals 1
    .param p1, "StartOffset"    # I
    .param p2, "EndOffset"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 69
    return-object p0
.end method

.method public ToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debug(I[Z)[Ljava/lang/Object;
    .locals 5
    .param p1, "limit"    # I
    .param p2, "outShouldAddReflectionFields"    # [Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 93
    .local v0, "res":[Ljava/lang/Object;
    const-string v1, "Length"

    aput-object v1, v0, v3

    .line 94
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 95
    const/4 v1, 0x2

    const-string v2, "ToString"

    aput-object v2, v0, v1

    .line 96
    const/4 v1, 0x3

    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    aput-boolean v4, p2, v3

    .line 98
    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
