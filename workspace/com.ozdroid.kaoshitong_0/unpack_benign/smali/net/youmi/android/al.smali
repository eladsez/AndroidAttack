.class Lnet/youmi/android/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/n;


# direct methods
.method constructor <init>(Lnet/youmi/android/n;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/al;->a:Lnet/youmi/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/al;->a:Lnet/youmi/android/n;

    iget-object v0, v0, Lnet/youmi/android/n;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/al;->a:Lnet/youmi/android/n;

    iget-object v1, p0, Lnet/youmi/android/al;->a:Lnet/youmi/android/n;

    iget-object v1, v1, Lnet/youmi/android/n;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lnet/youmi/android/n;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
