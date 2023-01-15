.class Lnet/youmi/android/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/bo;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/youmi/android/bo;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/bo;

    iput-object p2, p0, Lnet/youmi/android/co;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x258

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/co;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/bo;

    invoke-static {v1}, Lnet/youmi/android/bo;->a(Lnet/youmi/android/bo;)Lnet/youmi/android/k;

    move-result-object v1

    iget-object v1, v1, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->getAdW()I

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/bo;

    invoke-static {v2}, Lnet/youmi/android/bo;->a(Lnet/youmi/android/bo;)Lnet/youmi/android/k;

    move-result-object v2

    iget-object v2, v2, Lnet/youmi/android/k;->b:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->getAdH()I

    move-result v2

    iget-object v3, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/bo;

    invoke-static {v3}, Lnet/youmi/android/bo;->a(Lnet/youmi/android/bo;)Lnet/youmi/android/k;

    move-result-object v3

    iget-object v3, v3, Lnet/youmi/android/k;->a:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;IILandroid/os/Handler;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x148

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x149

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method
