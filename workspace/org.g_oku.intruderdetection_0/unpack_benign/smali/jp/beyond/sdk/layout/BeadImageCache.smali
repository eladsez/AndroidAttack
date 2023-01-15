.class public Ljp/beyond/sdk/layout/BeadImageCache;
.super Ljava/lang/Object;
.source "BeadImageCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;,
        Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;
    }
.end annotation


# instance fields
.field private cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljp/beyond/sdk/layout/BeadImageCache;)Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadImageCache;->cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    return-object v0
.end method


# virtual methods
.method public TCImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .line 24
    const-string v2, "activity"

    .line 23
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 25
    .local v0, "am":Landroid/app/ActivityManager;
    const/high16 v1, 0x200000

    .line 26
    .local v1, "memoryClass":I
    new-instance v2, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    invoke-direct {v2, p0, v1}, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;-><init>(Ljp/beyond/sdk/layout/BeadImageCache;I)V

    iput-object v2, p0, Ljp/beyond/sdk/layout/BeadImageCache;->cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    .line 27
    return-void
.end method

.method public display(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;
    .param p3, "defaultresource"    # I

    .prologue
    .line 30
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadImageCache;->cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    invoke-virtual {v1, p1}, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 32
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;

    invoke-direct {v1, p0, p2}, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;-><init>(Ljp/beyond/sdk/layout/BeadImageCache;Landroid/widget/ImageView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 119
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 107
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadImageCache;->cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    invoke-virtual {v0}, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;->evictAll()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadImageCache;->cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadImageCache;->cache:Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    invoke-virtual {v1}, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;->trimToSize(I)V

    goto :goto_0
.end method
