.class Lcom/picvision/seaweedweather/views/WebImageView$1$1;
.super Ljava/lang/Object;
.source "WebImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/views/WebImageView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/views/WebImageView$1;

.field private final synthetic val$cacheFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/views/WebImageView$1;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/WebImageView$1$1;->this$1:Lcom/picvision/seaweedweather/views/WebImageView$1;

    iput-object p2, p0, Lcom/picvision/seaweedweather/views/WebImageView$1$1;->val$cacheFile:Ljava/io/File;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/WebImageView$1$1;->this$1:Lcom/picvision/seaweedweather/views/WebImageView$1;

    invoke-static {v0}, Lcom/picvision/seaweedweather/views/WebImageView$1;->access$0(Lcom/picvision/seaweedweather/views/WebImageView$1;)Lcom/picvision/seaweedweather/views/WebImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/picvision/seaweedweather/views/WebImageView$1$1;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/views/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    return-void
.end method
