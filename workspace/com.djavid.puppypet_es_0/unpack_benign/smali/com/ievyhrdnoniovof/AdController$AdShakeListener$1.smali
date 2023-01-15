.class Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController$AdShakeListener;-><init>(Lcom/ievyhrdnoniovof/AdController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

.field final synthetic m:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController$AdShakeListener;Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController$AdShakeListener;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;->k:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;->m:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "LBAdController"

    const-string v1, "0\u001b\"\u0018&S\"\u0017c\u0017&\u0007&\u00107\u001a,\u001dc\u0016;\u0003*\u0001&\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;->k:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->A(Lcom/ievyhrdnoniovof/AdController$AdShakeListener;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$AdShakeListener$1;->k:Lcom/ievyhrdnoniovof/AdController$AdShakeListener;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController$AdShakeListener;->l(Lcom/ievyhrdnoniovof/AdController$AdShakeListener;)V

    return-void
.end method
