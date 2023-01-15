.class Lcom/parse/ParseInstallation$3;
.super Ljava/lang/Object;
.source "ParseInstallation.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseInstallation;->fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<",
        "Lcom/parse/ParseObject;",
        "Lcom/parse/Task",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseInstallation$3;->this$0:Lcom/parse/ParseInstallation;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Lcom/parse/ParseObject;>;"
    iget-object v0, p0, Lcom/parse/ParseInstallation$3;->this$0:Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseInstallation;->access$0(Lcom/parse/ParseInstallation;)V

    .line 194
    return-object p1
.end method

.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lcom/parse/Task;

    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$3;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
