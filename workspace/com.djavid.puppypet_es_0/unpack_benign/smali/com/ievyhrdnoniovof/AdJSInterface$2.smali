.class Lcom/ievyhrdnoniovof/AdJSInterface$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdJSInterface;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdJSInterface;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdJSInterface;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdJSInterface;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$2;->k:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface$2;->k:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    return-void
.end method
