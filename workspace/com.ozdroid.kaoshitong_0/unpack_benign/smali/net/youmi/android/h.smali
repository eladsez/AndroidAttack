.class Lnet/youmi/android/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/at;


# direct methods
.method constructor <init>(Lnet/youmi/android/at;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/h;->a:Lnet/youmi/android/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/h;->a:Lnet/youmi/android/at;

    iget-object v0, v0, Lnet/youmi/android/at;->a:Lnet/youmi/android/s;

    iget-object v1, p0, Lnet/youmi/android/h;->a:Lnet/youmi/android/at;

    invoke-interface {v0, v1}, Lnet/youmi/android/s;->a(Lnet/youmi/android/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
