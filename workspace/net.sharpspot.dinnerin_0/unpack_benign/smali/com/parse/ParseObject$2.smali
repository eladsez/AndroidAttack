.class final Lcom/parse/ParseObject$2;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/ParseObject$ParseObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseObject$ParseObjectFactory",
        "<",
        "Lcom/parse/ParseRole;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const-class v0, Lcom/parse/ParseRole;

    return-object v0
.end method

.method public bridge synthetic getNew(Z)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$2;->getNew(Z)Lcom/parse/ParseRole;

    move-result-object v0

    return-object v0
.end method

.method public getNew(Z)Lcom/parse/ParseRole;
    .locals 1
    .param p1, "isPointer"    # Z

    .prologue
    .line 71
    new-instance v0, Lcom/parse/ParseRole;

    invoke-direct {v0, p1}, Lcom/parse/ParseRole;-><init>(Z)V

    return-object v0
.end method