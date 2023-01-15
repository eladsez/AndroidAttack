.class Lcom/picvision/seaweedweather/views/WebImageView$1;
.super Ljava/lang/Object;
.source "WebImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/views/WebImageView;->setImageUrl(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/views/WebImageView;

.field private final synthetic val$cacheFile:Ljava/io/File;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/views/WebImageView;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->this$0:Lcom/picvision/seaweedweather/views/WebImageView;

    iput-object p2, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->val$cacheFile:Ljava/io/File;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/views/WebImageView$1;)Lcom/picvision/seaweedweather/views/WebImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->this$0:Lcom/picvision/seaweedweather/views/WebImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->val$url:Ljava/lang/String;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->val$cacheFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/picvision/seaweedweather/utils/IOUtilsEx;->copyUrl(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 58
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->this$0:Lcom/picvision/seaweedweather/views/WebImageView;

    invoke-static {v1}, Lcom/picvision/seaweedweather/views/WebImageView;->access$0(Lcom/picvision/seaweedweather/views/WebImageView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/picvision/seaweedweather/views/WebImageView$1$1;

    iget-object v3, p0, Lcom/picvision/seaweedweather/views/WebImageView$1;->val$cacheFile:Ljava/io/File;

    invoke-direct {v2, p0, v3}, Lcom/picvision/seaweedweather/views/WebImageView$1$1;-><init>(Lcom/picvision/seaweedweather/views/WebImageView$1;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/picvision/seaweedweather/views/WebImageView;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download iocn image error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
