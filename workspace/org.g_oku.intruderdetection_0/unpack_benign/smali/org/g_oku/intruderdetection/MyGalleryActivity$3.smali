.class Lorg/g_oku/intruderdetection/MyGalleryActivity$3;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    const-string v2, "item"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/g_oku/intruderdetection/ImageItem;

    .line 459
    .local v0, "item":Lorg/g_oku/intruderdetection/ImageItem;
    new-instance v1, Lorg/g_oku/intruderdetection/ImageLoader;

    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/g_oku/intruderdetection/ImageLoader;-><init>(Landroid/content/Context;Lorg/g_oku/intruderdetection/ImageItem;)V

    .line 460
    .local v1, "loader":Lorg/g_oku/intruderdetection/ImageLoader;
    invoke-virtual {v1}, Lorg/g_oku/intruderdetection/ImageLoader;->forceLoad()V

    .line 461
    return-object v1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 466
    .local v0, "id":I
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 468
    check-cast p1, Lorg/g_oku/intruderdetection/ImageLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v1, p1, Lorg/g_oku/intruderdetection/ImageLoader;->item:Lorg/g_oku/intruderdetection/ImageItem;

    .line 470
    .local v1, "item":Lorg/g_oku/intruderdetection/ImageItem;
    iput-object p2, v1, Lorg/g_oku/intruderdetection/ImageItem;->bitmap:Landroid/graphics/Bitmap;

    .line 471
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$1(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/support/v4/util/LruCache;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lorg/g_oku/intruderdetection/ImageItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v2, v1}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$2(Lorg/g_oku/intruderdetection/MyGalleryActivity;Lorg/g_oku/intruderdetection/ImageItem;)V

    .line 473
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$3;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method
