.class Lcom/ad_stir/ad/BaseAdView$2;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/ad/BaseAdView;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnGooglePlayId(Ljava/lang/String;)V
    .locals 3
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {}, Lcom/ad_stir/ad/BaseAdView;->access$100()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ad_stir/ad/BaseAdView;->access$002(Lcom/ad_stir/ad/BaseAdView;I)I

    .line 150
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-virtual {v1, p1}, Lcom/ad_stir/ad/BaseAdView;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseAdView url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ad_stir/ad/BaseAdView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/ad_stir/ad/BaseAdView$2$1;-><init>(Lcom/ad_stir/ad/BaseAdView$2;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method
