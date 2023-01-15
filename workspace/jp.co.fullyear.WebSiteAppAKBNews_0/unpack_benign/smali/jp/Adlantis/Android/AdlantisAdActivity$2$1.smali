.class Ljp/Adlantis/Android/AdlantisAdActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisAdActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/Adlantis/Android/AdlantisAdActivity$2;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisAdActivity$2;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2$1;->this$1:Ljp/Adlantis/Android/AdlantisAdActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redirectProcessed(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2$1;->this$1:Ljp/Adlantis/Android/AdlantisAdActivity$2;

    iget-object v1, v1, Ljp/Adlantis/Android/AdlantisAdActivity$2;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-virtual {v1, v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2$1;->this$1:Ljp/Adlantis/Android/AdlantisAdActivity$2;

    iget-object v0, v0, Ljp/Adlantis/Android/AdlantisAdActivity$2;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->access$100(Ljp/Adlantis/Android/AdlantisAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2$1;->this$1:Ljp/Adlantis/Android/AdlantisAdActivity$2;

    iget-object v0, v0, Ljp/Adlantis/Android/AdlantisAdActivity$2;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->access$300(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    return-void
.end method
