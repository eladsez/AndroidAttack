.class Lcom/ievyhrdnoniovof/AdController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->adInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$2;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const-string v0, "LBAdController"

    const-string v1, "(\u0007\t\rJ$\u001f\u0012\u001e\t\u0004F\t\n\u0003\u0005\u0001F\u000e\u0003\u001e\u0003\t\u0012\u000f\u0002J\u000f\u0004F=\u0003\u00080\u0003\u0003\u001d"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$2;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
