.class Ljp/Adlantis/Android/AdManager$3;
.super Landroid/os/Handler;


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

.field final synthetic val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdManager;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager$3;->this$0:Ljp/Adlantis/Android/AdManager;

    iput-object p2, p0, Ljp/Adlantis/Android/AdManager$3;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$3;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$3;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerCallback;

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager$3;->this$0:Ljp/Adlantis/Android/AdManager;

    invoke-interface {v0, v1}, Ljp/Adlantis/Android/AdManager$AdManagerCallback;->adsLoaded(Ljp/Adlantis/Android/AdManager;)V

    :cond_0
    return-void
.end method
