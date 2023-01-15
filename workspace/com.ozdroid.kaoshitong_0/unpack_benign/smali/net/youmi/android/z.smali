.class Lnet/youmi/android/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;

.field b:Lnet/youmi/android/y;

.field c:Landroid/os/Handler;

.field d:Landroid/graphics/Bitmap;

.field e:Lnet/youmi/android/ac;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/y;Landroid/os/Handler;Landroid/graphics/Bitmap;Lnet/youmi/android/ac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/z;->d:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lnet/youmi/android/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/z;->b:Lnet/youmi/android/y;

    iput-object p3, p0, Lnet/youmi/android/z;->c:Landroid/os/Handler;

    iput-object p4, p0, Lnet/youmi/android/z;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lnet/youmi/android/z;->e:Lnet/youmi/android/ac;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/youmi/android/z;->b:Lnet/youmi/android/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/z;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/z;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/z;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/z;->b:Lnet/youmi/android/y;

    iget-object v2, p0, Lnet/youmi/android/z;->c:Landroid/os/Handler;

    iget-object v3, p0, Lnet/youmi/android/z;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/av;->a(Landroid/content/Context;Lnet/youmi/android/y;Landroid/os/Handler;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/z;->e:Lnet/youmi/android/ac;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/youmi/android/z;->e:Lnet/youmi/android/ac;

    invoke-virtual {v1}, Lnet/youmi/android/ac;->b()V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
