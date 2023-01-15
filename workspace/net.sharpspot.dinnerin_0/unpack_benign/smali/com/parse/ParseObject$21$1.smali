.class Lcom/parse/ParseObject$21$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$21;->then(Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject$21;

.field final synthetic val$remaining:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$21;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/parse/ParseObject$21$1;->this$0:Lcom/parse/ParseObject$21;

    iput-object p2, p0, Lcom/parse/ParseObject$21$1;->val$remaining:Lcom/parse/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/parse/ParseObject$21$1;->val$remaining:Lcom/parse/Capture;

    invoke-virtual {v0}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/parse/ParseObject$21$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
