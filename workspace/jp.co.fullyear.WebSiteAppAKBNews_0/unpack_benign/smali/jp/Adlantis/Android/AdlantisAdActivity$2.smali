.class Ljp/Adlantis/Android/AdlantisAdActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisAdActivity;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->access$100(Ljp/Adlantis/Android/AdlantisAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->getInstance()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity$2;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisAdActivity;->access$200(Ljp/Adlantis/Android/AdlantisAdActivity;)Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v1

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisAd;->tapUrlString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljp/Adlantis/Android/AdlantisAdActivity$2$1;

    invoke-direct {v2, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$2$1;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity$2;)V

    invoke-virtual {v0, v1, v2}, Ljp/Adlantis/Android/AdManager;->handleClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V

    return-void
.end method
