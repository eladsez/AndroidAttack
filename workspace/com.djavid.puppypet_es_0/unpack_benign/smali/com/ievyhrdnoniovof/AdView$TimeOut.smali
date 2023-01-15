.class Lcom/ievyhrdnoniovof/AdView$TimeOut;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOut"
.end annotation


# instance fields
.field M:I

.field k:I

.field final synthetic m:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->m:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput v0, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->M:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->k:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->m:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getProgress()I

    move-result v2

    const/16 v1, 0x64

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView$TimeOut;->cancel()Z

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    :cond_0
    :goto_0
    iput v2, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->M:I

    return-void

    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    :cond_1
    iget v1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->M:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->k:I

    iget v1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->k:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$TimeOut;->m:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    :goto_1
    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView$TimeOut;->cancel()Z

    goto :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    :catch_0
    move-exception v1

    const-string v3, "LBAdView"

    const-string v4, "&\u00011\u001c1S*\u001dc\u00007\u001c3?,\u0012\'\u001a-\u0014"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ievyhrdnoniovof/AdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LBAdView"

    invoke-static {v3, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdView$TimeOut;
    goto :goto_1
.end method
