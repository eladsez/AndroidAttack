.class Ljp/Adlantis/Android/AdManager$4;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdManager;->connect(Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdManager;

.field final synthetic val$adLoadedHandler:Landroid/os/Handler;

.field final synthetic val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdManager;Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager$4;->this$0:Ljp/Adlantis/Android/AdManager;

    iput-object p2, p0, Ljp/Adlantis/Android/AdManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ljp/Adlantis/Android/AdManager$4;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;

    iput-object p4, p0, Ljp/Adlantis/Android/AdManager$4;->val$adLoadedHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$4;->this$0:Ljp/Adlantis/Android/AdManager;

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Ljp/Adlantis/Android/AdManager$4;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;

    invoke-static {v0, v1, v2}, Ljp/Adlantis/Android/AdManager;->access$600(Ljp/Adlantis/Android/AdManager;Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)Z

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$4;->val$adLoadedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager$4;->val$adLoadedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
