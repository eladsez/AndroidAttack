.class Lcom/ievyhrdnoniovof/AdView$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$6;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "y~|bwy|>ouz{qd6G}rNy}g"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v1, "T\u000bk\u0004N\u0016^"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView$6;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdView$6;
    :goto_0
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdView$6;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$6;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdView;->G(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$6;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdView;->G(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    :cond_0
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdView$6;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdView$6;
    :catch_0
    move-exception v1

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdView$6;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdView$6;
    goto :goto_0
.end method
