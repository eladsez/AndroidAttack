.class Ljp/Adlantis/Android/AdlantisAd$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisAd;->sendImpressionCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisAd;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisAd;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisAd$1;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$1;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, v3}, Ljp/Adlantis/Android/AdlantisAd;->access$000(Ljp/Adlantis/Android/AdlantisAd;Z)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$1;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    const-string v1, "count_impression"

    const-string v2, "sendImpressionCount"

    invoke-static {v0, v1, v2}, Ljp/Adlantis/Android/AdlantisAd;->access$100(Ljp/Adlantis/Android/AdlantisAd;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAd$1;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljp/Adlantis/Android/AdlantisAd;->access$000(Ljp/Adlantis/Android/AdlantisAd;Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$1;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, v3}, Ljp/Adlantis/Android/AdlantisAd;->access$200(Ljp/Adlantis/Android/AdlantisAd;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$1;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, v3}, Ljp/Adlantis/Android/AdlantisAd;->access$300(Ljp/Adlantis/Android/AdlantisAd;Z)V

    goto :goto_0
.end method
