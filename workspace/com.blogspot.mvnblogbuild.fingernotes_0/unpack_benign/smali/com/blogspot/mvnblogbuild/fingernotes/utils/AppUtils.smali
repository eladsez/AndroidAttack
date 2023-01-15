.class public Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field public static final IMAGE_FILE_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 36
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static byteArrToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    .local v0, "imageStream":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45
    .end local v0    # "imageStream":Ljava/io/ByteArrayInputStream;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static generateUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 27
    .local v0, "idUUID":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 65
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 66
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 67
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 69
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 73
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 75
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static inputStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 50
    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 53
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 54
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 55
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 57
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v1
.end method

.method public static openFingerNotes(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.blogspot.mvnblogbuild.fingernotes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public static showMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->showMessage(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    return-void
.end method

.method public static showMessage(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 85
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    if-nez p2, :cond_0

    .line 88
    const-string v1, "OK"

    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils$1;

    invoke-direct {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 98
    return-void

    .line 95
    :cond_0
    const-string v1, "OK"

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
