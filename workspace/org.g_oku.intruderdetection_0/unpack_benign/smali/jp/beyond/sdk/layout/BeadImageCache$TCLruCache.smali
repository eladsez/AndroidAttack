.class Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;
.super Landroid/util/LruCache;
.source "BeadImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/layout/BeadImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadImageCache;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/layout/BeadImageCache;I)V
    .locals 0
    .param p2, "maxSize"    # I

    .prologue
    .line 42
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;->this$0:Ljp/beyond/sdk/layout/BeadImageCache;

    .line 43
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 44
    return-void
.end method
