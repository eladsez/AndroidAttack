.class Lnet/youmi/android/az;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->a()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x12c800

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/youmi/android/az;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLnet/youmi/android/u;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v7

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, p6}, Lnet/youmi/android/az;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1, p7}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0, p2, p3, p4, v1}, Lnet/youmi/android/az;->a(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)Z

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb800

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {p0, p1, p7}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0, p2, p3, p4, v1}, Lnet/youmi/android/az;->a(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)Z

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :goto_2
    move-object v0, v6

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-static {v0}, Lnet/youmi/android/az;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-static {p0, p1, p7}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLnet/youmi/android/u;)Ljava/io/InputStream;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;
    .locals 5

    const/16 v0, 0xa

    :try_start_0
    const-string v1, "\u8fde\u63a5\u670d\u52a1\u5668"

    invoke-static {p2, v0, v1}, Lnet/youmi/android/as;->b(Lnet/youmi/android/u;ILjava/lang/String;)V

    invoke-static {p0, p1}, Lnet/youmi/android/bu;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x14

    const-string v2, "\u83b7\u53d6\u6570\u636e"

    invoke-static {p2, v1, v2}, Lnet/youmi/android/as;->b(Lnet/youmi/android/u;ILjava/lang/String;)V

    const-string v1, "get data from network!"

    invoke-static {v1}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    if-gtz v3, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v0, v2

    :goto_3
    return-object v0

    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {p2, v1}, Lnet/youmi/android/as;->a(Lnet/youmi/android/u;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "get bitmap from the temporary file cache"

    invoke-static {v1}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "get bitmap from the temporary file cache failed"

    invoke-static {v0}, Lnet/youmi/android/ak;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x41

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sdcard/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/"

    invoke-static {v1}, Lnet/youmi/android/az;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)Lnet/youmi/android/bi;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0, p1}, Lnet/youmi/android/az;->d(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/bi;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lnet/youmi/android/az;->c(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/bi;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lnet/youmi/android/bi;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p5}, Lnet/youmi/android/az;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lnet/youmi/android/bi;

    invoke-direct {v1}, Lnet/youmi/android/bi;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/youmi/android/bi;->d:Z

    iput-object v0, v1, Lnet/youmi/android/bi;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, p2, p3, p4, v1}, Lnet/youmi/android/az;->a(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    new-instance v1, Lnet/youmi/android/bi;

    invoke-direct {v1}, Lnet/youmi/android/bi;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/youmi/android/bi;->d:Z

    iput-object v0, v1, Lnet/youmi/android/bi;->b:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    if-nez v0, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_4
    :try_start_5
    new-instance v1, Lnet/youmi/android/bi;

    invoke-direct {v1}, Lnet/youmi/android/bi;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/youmi/android/bi;->d:Z

    iput-object v0, v1, Lnet/youmi/android/bi;->a:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;J)Z
    .locals 15

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object v11, v1

    move-object v1, p0

    move-object p0, v11

    :cond_0
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    :cond_1
    :goto_0
    :try_start_3
    array-length v4, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v5, 0x0

    move v11, v5

    move-wide v5, v2

    move-object v2, p0

    move p0, v11

    :goto_1
    if-lt p0, v4, :cond_3

    move-object p0, v2

    move-wide v2, v5

    :goto_2
    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    :cond_2
    const/4 p0, 0x1

    :goto_3
    return p0

    :catch_0
    move-exception v4

    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x32

    invoke-static {p0, v5}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object p0, v4

    goto :goto_0

    :cond_3
    :try_start_5
    aget-object v3, v1, p0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    if-nez v2, :cond_5

    move-object v2, v3

    :cond_4
    :goto_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    move-object v2, v3

    goto :goto_5

    :catch_1
    move-exception p0

    move-wide v3, v5

    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x34

    invoke-static {p0, v5}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object p0, v2

    move-wide v11, v3

    move-wide v2, v11

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x4f

    invoke-static/range {p0 .. p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_6
    const/4 p0, 0x0

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v11, v4

    move-object v12, p0

    move-object p0, v11

    move-wide v13, v2

    move-wide v3, v13

    move-object v2, v12

    goto :goto_6

    :catch_4
    move-exception v4

    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p4, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lnet/youmi/android/az;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    new-array v1, v1, [B

    :goto_2
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {p4, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v1, :cond_2

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :goto_4
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->b()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x200000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/youmi/android/az;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLnet/youmi/android/u;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v7

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Lnet/youmi/android/u;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Lnet/youmi/android/u;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0x5a

    const-string p3, "\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {p7, p2, p3}, Lnet/youmi/android/as;->a(Lnet/youmi/android/u;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x2c

    invoke-static {p0, p2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {p7, p1}, Lnet/youmi/android/as;->a(Lnet/youmi/android/u;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2d

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :goto_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    const-string p0, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {p7, p0}, Lnet/youmi/android/as;->a(Lnet/youmi/android/u;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLnet/youmi/android/u;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lnet/youmi/android/az;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Lnet/youmi/android/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->e()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x300000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lnet/youmi/android/az;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Lnet/youmi/android/u;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10d

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v8

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sdcard/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/"

    invoke-static {v1}, Lnet/youmi/android/az;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "create temp bitmap dir successed"

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "create temp bitmap dir failed"

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sdcard/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/"

    invoke-static {v1}, Lnet/youmi/android/az;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/bi;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->d()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x300000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lnet/youmi/android/bi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sdcard/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/"

    invoke-static {v1}, Lnet/youmi/android/az;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/bi;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->f()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lnet/youmi/android/bi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/az;->c()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x200000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/youmi/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLnet/youmi/android/u;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v7

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sdcard/youmicache/08AFFB08DEBE4CEEB49A1A8A75AE724E/"

    invoke-static {v1}, Lnet/youmi/android/az;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sdcard/youmicache/ditu/"

    invoke-static {v1}, Lnet/youmi/android/az;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static g()Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0
.end method
