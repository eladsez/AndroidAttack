.class Ljp/Adlantis/Android/AsyncImageLoader$1;
.super Landroid/os/Handler;


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

.field final synthetic val$imageCallback:Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AsyncImageLoader;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AsyncImageLoader$1;->this$0:Ljp/Adlantis/Android/AsyncImageLoader;

    iput-object p2, p0, Ljp/Adlantis/Android/AsyncImageLoader$1;->val$imageCallback:Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;

    iput-object p3, p0, Ljp/Adlantis/Android/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Ljp/Adlantis/Android/AsyncImageLoader$1;->val$imageCallback:Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp/Adlantis/Android/AsyncImageLoader$1;->val$imageCallback:Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Ljp/Adlantis/Android/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
