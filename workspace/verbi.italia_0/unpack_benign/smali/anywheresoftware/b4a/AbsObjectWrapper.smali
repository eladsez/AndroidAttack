.class public Lanywheresoftware/b4a/AbsObjectWrapper;
.super Ljava/lang/Object;
.source "AbsObjectWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/ObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lanywheresoftware/b4a/ObjectWrapper",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static Activity_LoadLayout_Was_Called:Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field


# instance fields
.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/AbsObjectWrapper;->Activity_LoadLayout_Was_Called:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertToWrapper(Lanywheresoftware/b4a/ObjectWrapper;Ljava/lang/Object;)Lanywheresoftware/b4a/ObjectWrapper;
    .locals 0
    .param p0, "ow"    # Lanywheresoftware/b4a/ObjectWrapper;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 116
    invoke-interface {p0, p1}, Lanywheresoftware/b4a/ObjectWrapper;->setObject(Ljava/lang/Object;)V

    .line 117
    return-object p0
.end method


# virtual methods
.method public IsInitialized()Z
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    iget-object v0, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public baseToString()Ljava/lang/String;
    .locals 6
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    iget-object v4, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "type":Ljava/lang/String;
    :goto_0
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "i":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 101
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " Not initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_1
    return-object v1

    .line 93
    .end local v0    # "i":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lanywheresoftware/b4a/BA$ShortName;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lanywheresoftware/b4a/BA$ShortName;

    .line 94
    .local v3, "typeName":Lanywheresoftware/b4a/BA$ShortName;
    if-eqz v3, :cond_3

    .line 95
    invoke-interface {v3}, Lanywheresoftware/b4a/BA$ShortName;->value()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v2    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    if-ne p0, p1, :cond_0

    move v2, v4

    .line 82
    :goto_0
    return v2

    .line 65
    :cond_0
    if-nez p1, :cond_2

    .line 67
    iget-object v2, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 69
    :cond_2
    instance-of v2, p1, Lanywheresoftware/b4a/AbsObjectWrapper;

    if-eqz v2, :cond_5

    .line 71
    move-object v0, p1

    check-cast v0, Lanywheresoftware/b4a/AbsObjectWrapper;

    move-object v1, v0

    .line 72
    .local v1, "other":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<*>;"
    iget-object v2, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 73
    iget-object v2, v1, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 75
    :cond_4
    iget-object v2, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    iget-object v3, v1, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 79
    .end local v1    # "other":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<*>;"
    :cond_5
    iget-object v2, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v2, :cond_6

    move v2, v3

    .line 80
    goto :goto_0

    .line 82
    :cond_6
    iget-object v2, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 6
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    iget-object v4, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lanywheresoftware/b4a/BA$ShortName;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lanywheresoftware/b4a/BA$ShortName;

    .line 30
    .local v3, "typeName":Lanywheresoftware/b4a/BA$ShortName;
    const-string v2, "Object should first be initialized"

    .line 31
    .local v2, "msg":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    :goto_0
    :try_start_0
    const-string v4, "anywheresoftware.b4a.objects.ViewWrapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    sget-boolean v4, Lanywheresoftware/b4a/AbsObjectWrapper;->Activity_LoadLayout_Was_Called:Z

    if-nez v4, :cond_0

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nDid you forget to call Activity.LoadLayout?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lanywheresoftware/b4a/BA$ShortName;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 42
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 43
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "typeName":Lanywheresoftware/b4a/BA$ShortName;
    :cond_2
    iget-object v4, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    return-object v4
.end method

.method public getObjectOrNull()Ljava/lang/Object;
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    iget-object v0, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    iget-object v0, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lanywheresoftware/b4a/AbsObjectWrapper;, "Lanywheresoftware/b4a/AbsObjectWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;->baseToString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/AbsObjectWrapper;->object:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
