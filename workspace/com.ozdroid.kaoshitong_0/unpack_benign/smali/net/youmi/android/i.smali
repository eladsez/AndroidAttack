.class Lnet/youmi/android/i;
.super Ljava/lang/Object;


# instance fields
.field protected A:Landroid/graphics/Bitmap;

.field protected B:I

.field protected C:[B

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:Z

.field protected H:I

.field protected I:I

.field protected J:[S

.field protected K:[B

.field protected L:[B

.field protected M:[B

.field N:I

.field O:I

.field protected P:Ljava/util/ArrayList;

.field protected a:I

.field protected b:Ljava/io/InputStream;

.field protected c:I

.field protected d:I

.field protected e:Z

.field protected f:I

.field protected g:I

.field protected h:[I

.field protected i:[I

.field protected j:[I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/i;->g:I

    iput v1, p0, Lnet/youmi/android/i;->B:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/youmi/android/i;->C:[B

    iput v1, p0, Lnet/youmi/android/i;->D:I

    iput v1, p0, Lnet/youmi/android/i;->E:I

    iput v1, p0, Lnet/youmi/android/i;->F:I

    iput-boolean v1, p0, Lnet/youmi/android/i;->G:Z

    iput v1, p0, Lnet/youmi/android/i;->H:I

    const/16 v0, 0x140

    iput v0, p0, Lnet/youmi/android/i;->N:I

    const/16 v0, 0x30

    iput v0, p0, Lnet/youmi/android/i;->O:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method a(Ljava/io/InputStream;II)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/youmi/android/i;->h()V

    iput p2, p0, Lnet/youmi/android/i;->N:I

    iput p3, p0, Lnet/youmi/android/i;->O:I

    iput-object p1, p0, Lnet/youmi/android/i;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Lnet/youmi/android/i;->m()V

    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/i;->k()V

    invoke-virtual {p0}, Lnet/youmi/android/i;->a()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/i;->a:I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/youmi/android/i;->b:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lnet/youmi/android/i;->a:I

    return v0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lnet/youmi/android/i;->a:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method a(I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/i;->a()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/r;

    iget-object v0, p0, Lnet/youmi/android/r;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 14

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lnet/youmi/android/i;->c:I

    iget v1, p0, Lnet/youmi/android/i;->d:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget v0, p0, Lnet/youmi/android/i;->F:I

    if-lez v0, :cond_1

    iget v0, p0, Lnet/youmi/android/i;->F:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/i;->a()I

    move-result v0

    sub-int/2addr v0, v10

    if-lez v0, :cond_2

    sub-int/2addr v0, v11

    invoke-virtual {p0, v0}, Lnet/youmi/android/i;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/i;->A:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/youmi/android/i;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/i;->A:Landroid/graphics/Bitmap;

    iget v3, p0, Lnet/youmi/android/i;->c:I

    iget v6, p0, Lnet/youmi/android/i;->c:I

    iget v7, p0, Lnet/youmi/android/i;->d:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lnet/youmi/android/i;->F:I

    if-ne v0, v10, :cond_1

    iget-boolean v0, p0, Lnet/youmi/android/i;->G:Z

    if-nez v0, :cond_c

    iget v0, p0, Lnet/youmi/android/i;->m:I

    :goto_1
    move v3, v2

    :goto_2
    iget v4, p0, Lnet/youmi/android/i;->y:I

    if-lt v3, v4, :cond_3

    :cond_1
    const/16 v0, 0x8

    move v3, v0

    move v4, v11

    move v0, v2

    :goto_3
    iget v5, p0, Lnet/youmi/android/i;->u:I

    if-lt v0, v5, :cond_5

    iget v0, p0, Lnet/youmi/android/i;->c:I

    iget v2, p0, Lnet/youmi/android/i;->d:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/i;->z:Landroid/graphics/Bitmap;

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/i;->A:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget v4, p0, Lnet/youmi/android/i;->w:I

    add-int/2addr v4, v3

    iget v5, p0, Lnet/youmi/android/i;->c:I

    mul-int/2addr v4, v5

    iget v5, p0, Lnet/youmi/android/i;->v:I

    add-int/2addr v4, v5

    iget v5, p0, Lnet/youmi/android/i;->x:I

    add-int/2addr v5, v4

    :goto_4
    if-lt v4, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v5, p0, Lnet/youmi/android/i;->p:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lnet/youmi/android/i;->u:I

    if-lt v2, v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_0

    :cond_6
    :goto_5
    add-int v5, v2, v3

    move v13, v5

    move v5, v4

    move v4, v3

    move v3, v13

    :goto_6
    iget v6, p0, Lnet/youmi/android/i;->s:I

    add-int/2addr v2, v6

    iget v6, p0, Lnet/youmi/android/i;->d:I

    if-ge v2, v6, :cond_7

    iget v6, p0, Lnet/youmi/android/i;->c:I

    mul-int/2addr v2, v6

    iget v6, p0, Lnet/youmi/android/i;->r:I

    add-int/2addr v6, v2

    iget v7, p0, Lnet/youmi/android/i;->t:I

    add-int/2addr v7, v6

    iget v8, p0, Lnet/youmi/android/i;->c:I

    add-int/2addr v8, v2

    if-ge v8, v7, :cond_a

    iget v7, p0, Lnet/youmi/android/i;->c:I

    add-int/2addr v2, v7

    :goto_7
    iget v7, p0, Lnet/youmi/android/i;->t:I

    mul-int/2addr v7, v0

    move v13, v7

    move v7, v6

    move v6, v13

    :goto_8
    if-lt v7, v2, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_3

    :pswitch_0
    move v2, v12

    goto :goto_5

    :pswitch_1
    move v2, v10

    move v3, v12

    goto :goto_5

    :pswitch_2
    move v2, v11

    move v3, v10

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lnet/youmi/android/i;->M:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v8, p0, Lnet/youmi/android/i;->j:[I

    aget v6, v8, v6

    if-eqz v6, :cond_9

    aput v6, v1, v7

    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v9

    goto :goto_8

    :cond_a
    move v2, v7

    goto :goto_7

    :cond_b
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_6

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(I)[I
    .locals 9

    const/4 v5, 0x0

    mul-int/lit8 v1, p1, 0x3

    const/4 v0, 0x0

    check-cast v0, [I

    new-array v2, v1, [B

    :try_start_0
    iget-object v3, p0, Lnet/youmi/android/i;->b:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lnet/youmi/android/i;->a:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-static {v3, v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move v3, v5

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v5

    move v3, v5

    :goto_1
    if-ge v3, p1, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v3, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    aput v1, v0, v3

    move v1, v6

    move v3, v7

    goto :goto_1
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lnet/youmi/android/i;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/youmi/android/i;->B:I

    iget v0, p0, Lnet/youmi/android/i;->B:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/i;->B:I

    :cond_0
    iget v0, p0, Lnet/youmi/android/i;->B:I

    if-ltz v0, :cond_1

    iget v0, p0, Lnet/youmi/android/i;->B:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    iget v1, p0, Lnet/youmi/android/i;->B:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/r;

    iget-object v0, p0, Lnet/youmi/android/r;->a:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()I
    .locals 2

    iget v0, p0, Lnet/youmi/android/i;->B:I

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/youmi/android/i;->B:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    iget v1, p0, Lnet/youmi/android/i;->B:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/r;

    iget v0, p0, Lnet/youmi/android/r;->b:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected e()V
    .locals 24

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/i;->t:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/i;->u:I

    move v4, v0

    mul-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->M:[B

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->M:[B

    move-object v4, v0

    array-length v4, v4

    if-ge v4, v3, :cond_1

    :cond_0
    new-array v4, v3, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/youmi/android/i;->M:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->J:[S

    move-object v4, v0

    if-nez v4, :cond_2

    const/16 v4, 0x1000

    new-array v4, v4, [S

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/youmi/android/i;->J:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->K:[B

    move-object v4, v0

    if-nez v4, :cond_3

    const/16 v4, 0x1000

    new-array v4, v4, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/youmi/android/i;->K:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->L:[B

    move-object v4, v0

    if-nez v4, :cond_4

    const/16 v4, 0x1001

    new-array v4, v4, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/youmi/android/i;->L:[B

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/youmi/android/i;->i()I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v4, 0x1

    const/4 v9, 0x1

    shl-int/2addr v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v5, :cond_6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v11

    move v13, v10

    move v14, v10

    move v15, v2

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v7

    move v11, v10

    move v7, v10

    move v8, v10

    move v9, v10

    :goto_1
    if-lt v12, v3, :cond_7

    :cond_5
    move v2, v7

    :goto_2
    if-lt v2, v3, :cond_e

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->J:[S

    move-object v11, v0

    const/4 v12, 0x0

    aput-short v12, v11, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->K:[B

    move-object v11, v0

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_7
    if-nez v9, :cond_c

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    if-nez v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/youmi/android/i;->j()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v13, 0x0

    move/from16 v23, v13

    move v13, v8

    move/from16 v8, v23

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->C:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int v19, v19, v14

    add-int v11, v11, v19

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_9
    and-int v19, v11, v17

    shr-int v11, v11, v16

    sub-int v14, v14, v16

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_5

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_a

    add-int/lit8 v15, v4, 0x1

    const/16 v16, 0x1

    shl-int v16, v16, v15

    const/16 v17, 0x1

    sub-int v16, v16, v17

    add-int/lit8 v17, v5, 0x2

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v2

    goto :goto_1

    :cond_a
    if-ne v15, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->L:[B

    move-object v10, v0

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->K:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v19

    aput-byte v20, v10, v9

    move v9, v15

    move/from16 v10, v19

    move/from16 v15, v19

    goto/16 :goto_1

    :cond_b
    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->L:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    int-to-byte v10, v10

    aput-byte v10, v20, v9

    move/from16 v9, v21

    move v10, v15

    :goto_3
    if-gt v10, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->K:[B

    move-object/from16 v20, v0

    aget-byte v10, v20, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v20, 0x1000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->L:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    move v0, v10

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->J:[S

    move-object v9, v0

    int-to-short v15, v15

    aput-short v15, v9, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->K:[B

    move-object v9, v0

    int-to-byte v15, v10

    aput-byte v15, v9, v18

    add-int/lit8 v9, v18, 0x1

    and-int v15, v9, v17

    if-nez v15, :cond_f

    const/16 v15, 0x1000

    if-ge v9, v15, :cond_f

    add-int/lit8 v15, v16, 0x1

    add-int v16, v17, v9

    :goto_4
    move/from16 v17, v16

    move/from16 v18, v9

    move/from16 v16, v15

    move/from16 v9, v21

    move/from16 v15, v19

    :cond_c
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->M:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->L:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v9

    aput-byte v21, v19, v7

    add-int/lit8 v7, v12, 0x1

    move v12, v7

    move/from16 v7, v20

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->L:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->K:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v10

    aput-byte v22, v20, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->J:[S

    move-object v9, v0

    aget-short v9, v9, v10

    move v10, v9

    move/from16 v9, v21

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/i;->M:[B

    move-object v4, v0

    const/4 v5, 0x0

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_f
    move/from16 v15, v16

    move/from16 v16, v17

    goto :goto_4

    :cond_10
    move/from16 v10, v19

    goto/16 :goto_3
.end method

.method protected f()Z
    .locals 1

    iget v0, p0, Lnet/youmi/android/i;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 0

    invoke-virtual {p0}, Lnet/youmi/android/i;->h()V

    return-void
.end method

.method protected h()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lnet/youmi/android/i;->z:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lnet/youmi/android/i;->A:Landroid/graphics/Bitmap;

    iput v0, p0, Lnet/youmi/android/i;->a:I

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v3, p0, Lnet/youmi/android/i;->h:[I

    iput-object v3, p0, Lnet/youmi/android/i;->i:[I

    iput-object v3, p0, Lnet/youmi/android/i;->J:[S

    iput-object v3, p0, Lnet/youmi/android/i;->K:[B

    iput-object v3, p0, Lnet/youmi/android/i;->L:[B

    iput-object v3, p0, Lnet/youmi/android/i;->M:[B

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/r;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lnet/youmi/android/r;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, v0, Lnet/youmi/android/r;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected i()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/youmi/android/i;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 v1, 0x1

    iput v1, p0, Lnet/youmi/android/i;->a:I

    goto :goto_0
.end method

.method protected j()I
    .locals 4

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->D:I

    const/4 v0, 0x0

    iget v1, p0, Lnet/youmi/android/i;->D:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lnet/youmi/android/i;->D:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_1
    iget v1, p0, Lnet/youmi/android/i;->D:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lnet/youmi/android/i;->a:I

    :cond_1
    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lnet/youmi/android/i;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lnet/youmi/android/i;->C:[B

    iget v3, p0, Lnet/youmi/android/i;->D:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected k()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    :sswitch_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iput v5, p0, Lnet/youmi/android/i;->a:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lnet/youmi/android/i;->n()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    invoke-virtual {p0}, Lnet/youmi/android/i;->s()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lnet/youmi/android/i;->l()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lnet/youmi/android/i;->j()I

    const-string v1, ""

    move-object v2, v1

    move v1, v4

    :goto_1
    const/16 v3, 0xb

    if-lt v1, v3, :cond_2

    const-string v1, "NETSCAPE2.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/youmi/android/i;->p()V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/youmi/android/i;->C:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnet/youmi/android/i;->s()V

    goto :goto_0

    :sswitch_5
    move v0, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected l()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lnet/youmi/android/i;->E:I

    iget v1, p0, Lnet/youmi/android/i;->E:I

    if-nez v1, :cond_0

    iput v2, p0, Lnet/youmi/android/i;->E:I

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lnet/youmi/android/i;->G:Z

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lnet/youmi/android/i;->H:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->I:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/i;->a:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/youmi/android/i;->o()V

    iget-boolean v0, p0, Lnet/youmi/android/i;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lnet/youmi/android/i;->f:I

    invoke-virtual {p0, v0}, Lnet/youmi/android/i;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/i;->h:[I

    iget-object v0, p0, Lnet/youmi/android/i;->h:[I

    iget v1, p0, Lnet/youmi/android/i;->k:I

    aget v0, v0, v1

    iput v0, p0, Lnet/youmi/android/i;->l:I

    goto :goto_1
.end method

.method protected n()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->r:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->s:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->t:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->u:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lnet/youmi/android/i;->o:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lnet/youmi/android/i;->p:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lnet/youmi/android/i;->q:I

    iget-boolean v0, p0, Lnet/youmi/android/i;->o:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lnet/youmi/android/i;->q:I

    invoke-virtual {p0, v0}, Lnet/youmi/android/i;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/i;->i:[I

    iget-object v0, p0, Lnet/youmi/android/i;->i:[I

    iput-object v0, p0, Lnet/youmi/android/i;->j:[I

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lnet/youmi/android/i;->G:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/youmi/android/i;->j:[I

    iget v1, p0, Lnet/youmi/android/i;->I:I

    aget v0, v0, v1

    iget-object v1, p0, Lnet/youmi/android/i;->j:[I

    iget v2, p0, Lnet/youmi/android/i;->I:I

    aput v3, v1, v2

    :goto_3
    iget-object v1, p0, Lnet/youmi/android/i;->j:[I

    if-nez v1, :cond_1

    iput v4, p0, Lnet/youmi/android/i;->a:I

    :cond_1
    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnet/youmi/android/i;->h:[I

    iput-object v0, p0, Lnet/youmi/android/i;->j:[I

    iget v0, p0, Lnet/youmi/android/i;->k:I

    iget v1, p0, Lnet/youmi/android/i;->I:I

    if-ne v0, v1, :cond_0

    iput v3, p0, Lnet/youmi/android/i;->l:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lnet/youmi/android/i;->e()V

    invoke-virtual {p0}, Lnet/youmi/android/i;->s()V

    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lnet/youmi/android/i;->c:I

    iget v2, p0, Lnet/youmi/android/i;->d:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/i;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lnet/youmi/android/i;->b()V

    iget v1, p0, Lnet/youmi/android/i;->N:I

    iget v2, p0, Lnet/youmi/android/i;->O:I

    iget-object v3, p0, Lnet/youmi/android/i;->z:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bw;->a(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/i;->P:Ljava/util/ArrayList;

    new-instance v3, Lnet/youmi/android/r;

    iget v4, p0, Lnet/youmi/android/i;->H:I

    invoke-direct {v3, p0, v1, v4}, Lnet/youmi/android/r;-><init>(Lnet/youmi/android/i;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lnet/youmi/android/i;->G:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/youmi/android/i;->j:[I

    iget v2, p0, Lnet/youmi/android/i;->I:I

    aput v0, v1, v2

    :cond_7
    invoke-virtual {p0}, Lnet/youmi/android/i;->r()V

    goto :goto_4

    :cond_8
    move v0, v3

    goto :goto_3
.end method

.method protected o()V
    .locals 2

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->c:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->q()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->d:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lnet/youmi/android/i;->e:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lnet/youmi/android/i;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->k:I

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/i;->n:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected p()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0}, Lnet/youmi/android/i;->j()I

    iget-object v0, p0, Lnet/youmi/android/i;->C:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lnet/youmi/android/i;->C:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lnet/youmi/android/i;->C:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/i;->g:I

    :cond_1
    iget v0, p0, Lnet/youmi/android/i;->D:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method protected q()I
    .locals 2

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v0

    invoke-virtual {p0}, Lnet/youmi/android/i;->i()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected r()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lnet/youmi/android/i;->E:I

    iput v0, p0, Lnet/youmi/android/i;->F:I

    iget v0, p0, Lnet/youmi/android/i;->r:I

    iput v0, p0, Lnet/youmi/android/i;->v:I

    iget v0, p0, Lnet/youmi/android/i;->s:I

    iput v0, p0, Lnet/youmi/android/i;->w:I

    iget v0, p0, Lnet/youmi/android/i;->t:I

    iput v0, p0, Lnet/youmi/android/i;->x:I

    iget v0, p0, Lnet/youmi/android/i;->u:I

    iput v0, p0, Lnet/youmi/android/i;->y:I

    iget-object v0, p0, Lnet/youmi/android/i;->z:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnet/youmi/android/i;->A:Landroid/graphics/Bitmap;

    iget v0, p0, Lnet/youmi/android/i;->l:I

    iput v0, p0, Lnet/youmi/android/i;->m:I

    iput v1, p0, Lnet/youmi/android/i;->E:I

    iput-boolean v1, p0, Lnet/youmi/android/i;->G:Z

    iput v1, p0, Lnet/youmi/android/i;->H:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/i;->i:[I

    return-void
.end method

.method protected s()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lnet/youmi/android/i;->j()I

    iget v0, p0, Lnet/youmi/android/i;->D:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lnet/youmi/android/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
