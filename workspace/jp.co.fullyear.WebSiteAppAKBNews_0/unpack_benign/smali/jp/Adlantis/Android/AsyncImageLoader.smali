.class public Ljp/Adlantis/Android/AsyncImageLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;
    }
.end annotation


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Ljp/Adlantis/Android/AsyncImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "AsyncImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImageFromUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AsyncImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception calling Drawable.createFromStream() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public loadDrawable(Ljava/lang/String;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljp/Adlantis/Android/AsyncImageLoader$1;

    invoke-direct {v0, p0, p2, p1}, Ljp/Adlantis/Android/AsyncImageLoader$1;-><init>(Ljp/Adlantis/Android/AsyncImageLoader;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;Ljava/lang/String;)V

    new-instance v1, Ljp/Adlantis/Android/AsyncImageLoader$2;

    invoke-direct {v1, p0, p1, v0}, Ljp/Adlantis/Android/AsyncImageLoader$2;-><init>(Ljp/Adlantis/Android/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljp/Adlantis/Android/AsyncImageLoader$2;->start()V

    const/4 v0, 0x0

    goto :goto_0
.end method
