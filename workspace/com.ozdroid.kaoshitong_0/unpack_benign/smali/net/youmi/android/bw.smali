.class Lnet/youmi/android/bw;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Landroid/graphics/Bitmap;

.field static f:Landroid/graphics/Bitmap;

.field static g:Landroid/graphics/Bitmap;

.field static h:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    if-gtz p0, :cond_2

    :try_start_0
    sget v0, Lnet/youmi/android/o;->a:I

    :goto_1
    if-gtz p1, :cond_1

    const/16 v1, 0x30

    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_2

    :cond_2
    move v0, p0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    invoke-static {}, Lnet/youmi/android/bw;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    sget-object v0, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {}, Lnet/youmi/android/bw;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bw;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v0, Lnet/youmi/android/bw;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lnet/youmi/android/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->e:Landroid/graphics/Bitmap;

    sget-object v0, Lnet/youmi/android/bw;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lnet/youmi/android/bw;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bw;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v0, Lnet/youmi/android/bw;->f:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lnet/youmi/android/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->f:Landroid/graphics/Bitmap;

    sget-object v0, Lnet/youmi/android/bw;->f:Landroid/graphics/Bitmap;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lnet/youmi/android/bw;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    sget-object v0, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lnet/youmi/android/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    sget-object v0, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lnet/youmi/android/bw;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bw;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    sget-object v0, Lnet/youmi/android/bw;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lnet/youmi/android/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->h:Landroid/graphics/Bitmap;

    sget-object v0, Lnet/youmi/android/bw;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lnet/youmi/android/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;

    sget-object v0, Lnet/youmi/android/bw;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x26 -> :sswitch_1
        0x30 -> :sswitch_2
        0x40 -> :sswitch_3
    .end sparse-switch
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lnet/youmi/android/az;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->s:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->s:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lnet/youmi/android/aq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/aq;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->u:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->u:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lnet/youmi/android/az;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->w:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->w:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->y:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->y:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    goto :goto_0
.end method
