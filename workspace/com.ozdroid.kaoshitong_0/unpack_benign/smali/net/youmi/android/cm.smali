.class Lnet/youmi/android/cm;
.super Ljava/lang/Object;


# instance fields
.field a:Lnet/youmi/android/y;

.field b:Landroid/content/Context;

.field c:Z

.field d:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/cm;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lnet/youmi/android/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lnet/youmi/android/cm;->b:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/cm;->a:Lnet/youmi/android/y;

    iput-object p6, p0, Lnet/youmi/android/cm;->d:Landroid/os/Handler;

    iget-boolean v0, p2, Lnet/youmi/android/y;->c:Z

    if-nez v0, :cond_0

    iget v0, p2, Lnet/youmi/android/y;->b:I

    iget-object v1, p2, Lnet/youmi/android/y;->a:Ljava/lang/String;

    iget-object v2, p2, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    invoke-static {p1, v0, v1, v2}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;)Z

    const/4 v0, 0x1

    iput-boolean v0, p2, Lnet/youmi/android/y;->c:Z

    :cond_0
    const-string v0, "\u6709\u7c73\u5e7f\u544a"

    invoke-virtual {p2}, Lnet/youmi/android/y;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lnet/youmi/android/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lnet/youmi/android/y;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p2}, Lnet/youmi/android/y;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v1, p6, v0, v2}, Lnet/youmi/android/bw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method
