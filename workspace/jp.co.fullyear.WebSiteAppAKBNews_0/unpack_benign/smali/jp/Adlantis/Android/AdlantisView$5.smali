.class Ljp/Adlantis/Android/AdlantisView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisView;->handleUserTouchUp()V
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

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$5;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redirectProcessed(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$5;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$5;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$1400(Ljp/Adlantis/Android/AdlantisView;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$5;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1, v4}, Ljp/Adlantis/Android/AdlantisView;->access$1502(Ljp/Adlantis/Android/AdlantisView;Z)Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$5;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisView;->access$1300(Ljp/Adlantis/Android/AdlantisView;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity not found for url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0
.end method
