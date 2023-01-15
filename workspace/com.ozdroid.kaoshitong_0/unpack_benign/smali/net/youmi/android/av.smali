.class Lnet/youmi/android/av;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/os/Handler;

.field static b:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lnet/youmi/android/y;Landroid/os/Handler;Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 3

    sput-object p0, Lnet/youmi/android/av;->b:Landroid/content/Context;

    sget-object v0, Lnet/youmi/android/av;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    sput-object p2, Lnet/youmi/android/av;->a:Landroid/os/Handler;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-virtual {v2}, Lnet/youmi/android/bl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p1, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-virtual {v1}, Lnet/youmi/android/bl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p1, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-static {p0, v1, p2, p3}, Lnet/youmi/android/c;->a(Landroid/content/Context;Lnet/youmi/android/bl;Landroid/os/Handler;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
