.class Lnet/youmi/android/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/at;

.field private final synthetic b:Lnet/youmi/android/y;


# direct methods
.method constructor <init>(Lnet/youmi/android/at;Lnet/youmi/android/y;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/b;->a:Lnet/youmi/android/at;

    iput-object p2, p0, Lnet/youmi/android/b;->b:Lnet/youmi/android/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/b;->a:Lnet/youmi/android/at;

    iget-object v0, v0, Lnet/youmi/android/at;->c:Lnet/youmi/android/br;

    iget-object v1, p0, Lnet/youmi/android/b;->b:Lnet/youmi/android/y;

    invoke-virtual {v0, v1}, Lnet/youmi/android/br;->a(Lnet/youmi/android/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/b;->a:Lnet/youmi/android/at;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/youmi/android/at;->a(Lnet/youmi/android/at;I)V

    iget-object v0, p0, Lnet/youmi/android/b;->a:Lnet/youmi/android/at;

    iget-object v0, v0, Lnet/youmi/android/at;->a:Lnet/youmi/android/s;

    iget-object v1, p0, Lnet/youmi/android/b;->a:Lnet/youmi/android/at;

    invoke-interface {v0, v1}, Lnet/youmi/android/s;->a(Lnet/youmi/android/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
