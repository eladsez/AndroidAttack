.class Ljp/Adlantis/Android/AsyncImageLoader$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AsyncImageLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->this$0:Ljp/Adlantis/Android/AsyncImageLoader;

    iput-object p2, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    invoke-static {v0}, Ljp/Adlantis/Android/AsyncImageLoader;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->this$0:Ljp/Adlantis/Android/AsyncImageLoader;

    invoke-static {v1}, Ljp/Adlantis/Android/AsyncImageLoader;->access$000(Ljp/Adlantis/Android/AsyncImageLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->val$imageUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AsyncImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageCache.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->this$0:Ljp/Adlantis/Android/AsyncImageLoader;

    invoke-static {v3}, Ljp/Adlantis/Android/AsyncImageLoader;->access$000(Ljp/Adlantis/Android/AsyncImageLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ljp/Adlantis/Android/AsyncImageLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
