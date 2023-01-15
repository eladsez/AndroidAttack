.class Ljp/Adlantis/Android/AdlantisView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisView;->commonInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisView;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisView;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$3;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$3;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisView;->access$300(Ljp/Adlantis/Android/AdlantisView;)Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager;->getPublisherID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$3;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AdlantisView publisher id not set"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "AdlantisView"

    const-string v1, "AdlantisView: can\'t display ads because publisherID hasn\'t been set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$3;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisView;->connect()V

    goto :goto_0
.end method
