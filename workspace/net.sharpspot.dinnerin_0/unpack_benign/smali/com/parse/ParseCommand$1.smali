.class Lcom/parse/ParseCommand$1;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand;->performAsync(Z)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseCommand$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->resolveLocalIds()V

    .line 325
    iget-object v0, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v0}, Lcom/parse/ParseCommand;->access$0(Lcom/parse/ParseCommand;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v0}, Lcom/parse/ParseCommand;->access$0(Lcom/parse/ParseCommand;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->preparePost()V

    .line 328
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
