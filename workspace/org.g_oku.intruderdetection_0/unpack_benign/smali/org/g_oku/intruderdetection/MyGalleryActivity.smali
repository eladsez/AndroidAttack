.class public Lorg/g_oku/intruderdetection/MyGalleryActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MyGalleryActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/g_oku/intruderdetection/MyGalleryActivity$AdapterComparator;
    }
.end annotation


# static fields
.field private static final ARERT_IMAGE_NUM:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field mCurImgPath:Ljava/lang/String;

.field mDeleteFlag:Z

.field mDisplayFlag:Z

.field private mGridView:Landroid/widget/GridView;

.field private mLruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->TAG:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mCurImgPath:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDeleteFlag:Z

    .line 72
    iput-boolean v1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDisplayFlag:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 99
    new-instance v0, Lorg/g_oku/intruderdetection/MyGalleryActivity$1;

    invoke-direct {v0, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$1;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->runnable:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lorg/g_oku/intruderdetection/MyGalleryActivity$2;

    invoke-direct {v0, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$2;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->handler:Landroid/os/Handler;

    .line 455
    new-instance v0, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;

    invoke-direct {v0, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mLruCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$2(Lorg/g_oku/intruderdetection/MyGalleryActivity;Lorg/g_oku/intruderdetection/ImageItem;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->setBitmap(Lorg/g_oku/intruderdetection/ImageItem;)V

    return-void
.end method

.method static synthetic access$3(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->delete()V

    return-void
.end method

.method static synthetic access$4(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->share()V

    return-void
.end method

.method static synthetic access$5(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->loadBitmap()V

    return-void
.end method

.method static synthetic access$6(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$7(Lorg/g_oku/intruderdetection/MyGalleryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lorg/g_oku/intruderdetection/MyGalleryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->deleteImageFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->setDisplay()V

    return-void
.end method

.method private alertNotifyDialog(I)V
    .locals 10
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 275
    .local v9, "sharePref":Landroid/content/SharedPreferences;
    const-string v3, "displayFlag"

    const/4 v4, 0x1

    invoke-interface {v9, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 276
    .local v7, "flag":Z
    const/16 v3, 0x64

    if-le p1, v3, :cond_0

    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 278
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "view":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 282
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 283
    const v4, 0x7f08001d

    new-instance v5, Lorg/g_oku/intruderdetection/MyGalleryActivity$8;

    invoke-direct {v5, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$8;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 295
    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 296
    .local v6, "checkbox":Landroid/widget/CheckBox;
    new-instance v2, Lorg/g_oku/intruderdetection/MyGalleryActivity$9;

    invoke-direct {v2, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$9;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 303
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "view":Landroid/view/View;
    .end local v6    # "checkbox":Landroid/widget/CheckBox;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method private delete()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 328
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 329
    const v1, 0x7f08001d

    new-instance v2, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-direct {v2, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 375
    const v1, 0x7f08001e

    new-instance v2, Lorg/g_oku/intruderdetection/MyGalleryActivity$11;

    invoke-direct {v2, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$11;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 381
    return-void
.end method

.method private deleteAll()V
    .locals 5

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 504
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-static {p0}, Lorg/g_oku/intruderdetection/FileDataUtil;->getApplicationBitmapFileList(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 510
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 565
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/io/IOException;
    const v2, 0x7f080015

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 514
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 516
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 517
    const v3, 0x7f08001d

    new-instance v4, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-direct {v4, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 559
    const v3, 0x7f08001e

    new-instance v4, Lorg/g_oku/intruderdetection/MyGalleryActivity$13;

    invoke-direct {v4, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$13;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private deleteImageFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 385
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 388
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 392
    iget-object v1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mCurImgPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iput-boolean v6, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDeleteFlag:Z

    .line 395
    :cond_0
    return-void
.end method

.method private getDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 255
    .local v2, "length":I
    const/16 v6, 0x15

    if-ge v2, v6, :cond_0

    .line 256
    const/4 v6, 0x0

    .line 269
    :goto_0
    return-object v6

    .line 259
    :cond_0
    add-int/lit8 v6, v2, -0x15

    add-int/lit8 v7, v2, -0x11

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "yyyy":Ljava/lang/String;
    add-int/lit8 v6, v2, -0x11

    add-int/lit8 v7, v2, -0xf

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "mm":Ljava/lang/String;
    add-int/lit8 v6, v2, -0xf

    add-int/lit8 v7, v2, -0xd

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "dd":Ljava/lang/String;
    add-int/lit8 v6, v2, -0xd

    add-int/lit8 v7, v2, -0xb

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "hh":Ljava/lang/String;
    add-int/lit8 v6, v2, -0xb

    add-int/lit8 v7, v2, -0x9

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "min":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 269
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private loadBitmap()V
    .locals 11

    .prologue
    .line 402
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/g_oku/intruderdetection/ImageAdapter;

    .line 403
    .local v0, "adapter":Lorg/g_oku/intruderdetection/ImageAdapter;
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 404
    .local v4, "first":I
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 407
    .local v3, "count":I
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getCount()I

    move-result v7

    .line 408
    .local v7, "realCount":I
    if-nez v3, :cond_1

    if-nez v7, :cond_1

    .line 409
    const/4 v3, 0x0

    .line 421
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v3, :cond_3

    .line 438
    return-void

    .line 411
    .end local v5    # "i":I
    :cond_1
    if-nez v3, :cond_0

    if-eqz v7, :cond_0

    .line 413
    const/16 v8, 0x14

    if-ge v7, v8, :cond_2

    .line 414
    move v3, v7

    .line 415
    goto :goto_0

    .line 417
    :cond_2
    const/16 v3, 0x14

    goto :goto_0

    .line 422
    .restart local v5    # "i":I
    :cond_3
    add-int v8, v5, v4

    invoke-virtual {v0, v8}, Lorg/g_oku/intruderdetection/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/g_oku/intruderdetection/ImageItem;

    .line 424
    .local v6, "item":Lorg/g_oku/intruderdetection/ImageItem;
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mLruCache:Landroid/support/v4/util/LruCache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v6, Lorg/g_oku/intruderdetection/ImageItem;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 425
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 428
    invoke-direct {p0, v6}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->setBitmap(Lorg/g_oku/intruderdetection/ImageItem;)V

    .line 429
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->invalidateViews()V

    .line 421
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 433
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "item"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 435
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v8

    iget-object v9, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v5, v2, v9}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_2
.end method

.method private setBitmap(Lorg/g_oku/intruderdetection/ImageItem;)V
    .locals 2
    .param p1, "item"    # Lorg/g_oku/intruderdetection/ImageItem;

    .prologue
    .line 445
    iget-object v1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 446
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p1, Lorg/g_oku/intruderdetection/ImageItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    iget-object v1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidateViews()V

    .line 450
    :cond_0
    return-void
.end method

.method private setDisplay()V
    .locals 11

    .prologue
    .line 115
    iget-object v7, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 116
    iget-object v7, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    new-instance v8, Lorg/g_oku/intruderdetection/MyGalleryActivity$4;

    invoke-direct {v8, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$4;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 159
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    long-to-int v6, v7

    .line 162
    .local v6, "maxMemory":I
    div-int/lit8 v1, v6, 0x8

    .line 163
    .local v1, "cacheSize":I
    new-instance v7, Lorg/g_oku/intruderdetection/MyGalleryActivity$5;

    invoke-direct {v7, p0, v1}, Lorg/g_oku/intruderdetection/MyGalleryActivity$5;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;I)V

    iput-object v7, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mLruCache:Landroid/support/v4/util/LruCache;

    .line 172
    const/4 v4, 0x0

    .line 174
    .local v4, "imageFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-static {p0}, Lorg/g_oku/intruderdetection/FileDataUtil;->getApplicationBitmapFileList(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 180
    if-nez v4, :cond_0

    .line 251
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    const v7, 0x7f080014

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->alertNotifyDialog(I)V

    .line 187
    new-instance v0, Lorg/g_oku/intruderdetection/ImageAdapter;

    invoke-direct {v0, p0}, Lorg/g_oku/intruderdetection/ImageAdapter;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "adapter":Lorg/g_oku/intruderdetection/ImageAdapter;
    iget-object v7, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 198
    new-instance v7, Lorg/g_oku/intruderdetection/MyGalleryActivity$AdapterComparator;

    invoke-direct {v7, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$AdapterComparator;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v0, v7}, Lorg/g_oku/intruderdetection/ImageAdapter;->sort(Ljava/util/Comparator;)V

    .line 200
    iget-object v7, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    new-instance v8, Lorg/g_oku/intruderdetection/MyGalleryActivity$6;

    invoke-direct {v8, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$6;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 213
    iget-object v7, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    new-instance v8, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;

    invoke-direct {v8, p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;-><init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->loadBitmap()V

    goto :goto_0

    .line 191
    :cond_1
    new-instance v5, Lorg/g_oku/intruderdetection/ImageItem;

    invoke-direct {v5}, Lorg/g_oku/intruderdetection/ImageItem;-><init>()V

    .line 192
    .local v5, "item":Lorg/g_oku/intruderdetection/ImageItem;
    iput v3, v5, Lorg/g_oku/intruderdetection/ImageItem;->id:I

    .line 193
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/g_oku/intruderdetection/ImageItem;->path:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v5}, Lorg/g_oku/intruderdetection/ImageAdapter;->add(Ljava/lang/Object;)V

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private share()V
    .locals 10

    .prologue
    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/g_oku/intruderdetection/ImageAdapter;

    .line 310
    .local v0, "adapter":Lorg/g_oku/intruderdetection/ImageAdapter;
    iget-object v8, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 311
    .local v6, "positions":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 319
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "image/jpg"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void

    .line 312
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 314
    .local v4, "key":I
    invoke-virtual {v0, v4}, Lorg/g_oku/intruderdetection/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/g_oku/intruderdetection/ImageItem;

    .line 315
    .local v3, "item":Lorg/g_oku/intruderdetection/ImageItem;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lorg/g_oku/intruderdetection/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method initProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 94
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 96
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    .line 84
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 85
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 87
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->initProgressDialog()V

    .line 89
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->setDisplay()V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 483
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 488
    sget-object v0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 496
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 492
    :pswitch_0
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->deleteAll()V

    .line 493
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x7f0c000c
        :pswitch_0
    .end packed-switch
.end method
