.class Lcom/parse/PushService$1;
.super Lcom/parse/BackgroundTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    .local p1, "$anonymous0":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p2, p0, Lcom/parse/PushService$1;->val$context:Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/PushService$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parse/PushService$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/ParsePushRouter;->hasRoutes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "com.parse.PushService"

    const-string v1, "No known push routes; will not start push service"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/parse/PushService$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/PushService;->access$0(Landroid/content/Context;)V

    goto :goto_0
.end method
