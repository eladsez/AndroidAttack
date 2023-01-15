.class Lnet/youmi/android/y;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field c:Z

.field d:Z

.field e:Lnet/youmi/android/bl;

.field f:Lnet/youmi/android/ad;

.field g:Lnet/youmi/android/bm;

.field protected h:Ljava/lang/String;

.field public i:Z

.field private j:Ljava/lang/String;

.field private k:Landroid/graphics/Bitmap;

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lnet/youmi/android/y;->c:Z

    iput-boolean v1, p0, Lnet/youmi/android/y;->d:Z

    sget-object v0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    iput-object v0, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    sget-object v0, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    iput-object v0, p0, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    iput-boolean v1, p0, Lnet/youmi/android/y;->i:Z

    return-void
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/youmi/android/y;
    .locals 9

    new-instance v0, Lnet/youmi/android/y;

    invoke-direct {v0}, Lnet/youmi/android/y;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lnet/youmi/android/y;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->j:Ljava/lang/String;

    return-object v0
.end method

.method b()Lnet/youmi/android/ad;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    return-object v0
.end method

.method b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-gtz p2, :cond_0

    :try_start_0
    const-string v0, "ad data error."

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "ad data error..."

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ad data error...."

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/youmi/android/y;->i:Z

    iput p2, p0, Lnet/youmi/android/y;->b:I

    iput-object v0, p0, Lnet/youmi/android/y;->a:Ljava/lang/String;

    if-nez p6, :cond_4

    const-string v0, ""

    :goto_1
    if-nez p4, :cond_5

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lnet/youmi/android/y;->j:Ljava/lang/String;

    if-nez p5, :cond_6

    const-string v1, ""

    :goto_3
    iput-object v1, p0, Lnet/youmi/android/y;->h:Ljava/lang/String;

    packed-switch p8, :pswitch_data_0

    sget-object v1, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    iput-object v1, p0, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    :goto_4
    packed-switch p7, :pswitch_data_1

    sget-object v0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    iput-object v0, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    :cond_3
    :goto_5
    move v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_0
    sget-object v1, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    iput-object v1, p0, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-object v1, Lnet/youmi/android/bm;->b:Lnet/youmi/android/bm;

    iput-object v1, p0, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    goto :goto_4

    :pswitch_2
    sget-object v1, Lnet/youmi/android/bm;->c:Lnet/youmi/android/bm;

    iput-object v1, p0, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    goto :goto_4

    :pswitch_3
    sget-object v0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    iput-object v0, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    goto :goto_5

    :pswitch_4
    sget-object v1, Lnet/youmi/android/ad;->b:Lnet/youmi/android/ad;

    iput-object v1, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {p1, v0}, Lnet/youmi/android/bw;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/y;->k:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lnet/youmi/android/y;->i:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x140

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_5
    sget-object v1, Lnet/youmi/android/ad;->c:Lnet/youmi/android/ad;

    iput-object v1, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {p1, v0}, Lnet/youmi/android/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/y;->k:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_6
    :try_start_5
    iget-object v0, p0, Lnet/youmi/android/y;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    sget-object v0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    iput-object v0, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    goto :goto_5

    :catch_2
    move-exception v0

    sget-object v1, Lnet/youmi/android/ad;->a:Lnet/youmi/android/ad;

    iput-object v1, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x141

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_6

    :pswitch_6
    sget-object v1, Lnet/youmi/android/ad;->d:Lnet/youmi/android/ad;

    iput-object v1, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/ad;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/y;->i:Z

    goto :goto_5

    :cond_7
    iput-object v0, p0, Lnet/youmi/android/y;->l:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method c()Lnet/youmi/android/bm;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    return-object v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/y;->b:I

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->h:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->l:Ljava/lang/String;

    return-object v0
.end method
