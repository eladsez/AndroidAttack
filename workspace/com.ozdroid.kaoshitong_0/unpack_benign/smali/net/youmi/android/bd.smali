.class Lnet/youmi/android/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bd;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/bd;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/youmi/android/bd;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bd;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/bd;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnet/youmi/android/bd;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10a

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
