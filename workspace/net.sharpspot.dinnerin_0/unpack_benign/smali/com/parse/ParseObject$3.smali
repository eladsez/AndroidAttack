.class final Lcom/parse/ParseObject$3;
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
        "Lcom/parse/ParseInstallation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
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
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const-class v0, Lcom/parse/ParseInstallation;

    return-object v0
.end method

.method public getNew(Z)Lcom/parse/ParseInstallation;
    .locals 1
    .param p1, "isPointer"    # Z

    .prologue
    .line 80
    new-instance v0, Lcom/parse/ParseInstallation;

    invoke-direct {v0, p1}, Lcom/parse/ParseInstallation;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getNew(Z)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$3;->getNew(Z)Lcom/parse/ParseInstallation;

    move-result-object v0

    return-object v0
.end method
