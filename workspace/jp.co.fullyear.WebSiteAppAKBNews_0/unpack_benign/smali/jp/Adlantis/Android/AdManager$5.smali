.class Ljp/Adlantis/Android/AdManager$5;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdManager;->handleHttpClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdManager;

.field final synthetic val$callback:Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdManager;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager$5;->this$0:Ljp/Adlantis/Android/AdManager;

    iput-object p2, p0, Ljp/Adlantis/Android/AdManager$5;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$5;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager$5;->val$callback:Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;->redirectProcessed(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
