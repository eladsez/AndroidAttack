.class Ljp/Adlantis/Android/AdlantisAd$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisAd;->sendCountExpandedAdOpened()V
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

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisAd$2;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AdlantisAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCountExpandedAdOpened ad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisAd$2;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$2;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, v3}, Ljp/Adlantis/Android/AdlantisAd;->access$402(Ljp/Adlantis/Android/AdlantisAd;Z)Z

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$2;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    const-string v1, "count_expand"

    const-string v2, "sendCountExpandedAdOpened"

    invoke-static {v0, v1, v2}, Ljp/Adlantis/Android/AdlantisAd;->access$100(Ljp/Adlantis/Android/AdlantisAd;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$2;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/Adlantis/Android/AdlantisAd;->access$402(Ljp/Adlantis/Android/AdlantisAd;Z)Z

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAd$2;->this$0:Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, v3}, Ljp/Adlantis/Android/AdlantisAd;->access$502(Ljp/Adlantis/Android/AdlantisAd;Z)Z

    return-void
.end method
