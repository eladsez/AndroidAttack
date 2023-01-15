.class Lnet/youmi/android/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/k;


# direct methods
.method constructor <init>(Lnet/youmi/android/k;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/bo;)Lnet/youmi/android/k;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/k;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "click"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/k;

    invoke-static {v0}, Lnet/youmi/android/k;->a(Lnet/youmi/android/k;)Lnet/youmi/android/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/k;

    invoke-virtual {v0}, Lnet/youmi/android/k;->i()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/bo;->a:Lnet/youmi/android/k;

    invoke-static {v1}, Lnet/youmi/android/k;->a(Lnet/youmi/android/k;)Lnet/youmi/android/m;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/youmi/android/m;->a(Landroid/view/animation/Animation;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/co;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/co;-><init>(Lnet/youmi/android/bo;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
