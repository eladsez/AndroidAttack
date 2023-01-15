.class public Lcom/picvision/seaweedweather/views/WebImageView;
.super Landroid/widget/ImageView;
.source "WebImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/picvision/seaweedweather/views/WebImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/views/WebImageView;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/WebImageView;->handler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/WebImageView;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/WebImageView;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/views/WebImageView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/WebImageView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/picvision/seaweedweather/views/WebImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setImageUrl(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 41
    sget-object v1, Lcom/picvision/seaweedweather/views/WebImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load iamge,url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cacheFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 44
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/views/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;->getInstance()Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;

    move-result-object v1

    new-instance v2, Lcom/picvision/seaweedweather/views/WebImageView$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/picvision/seaweedweather/views/WebImageView$1;-><init>(Lcom/picvision/seaweedweather/views/WebImageView;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
