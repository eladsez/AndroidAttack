.class Lcom/ad_stir/ad/BaseAdView$3;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 193
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$3;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "BaseAdView interval"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$3;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$700(Lcom/ad_stir/ad/BaseAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ad_stir/ad/BaseAdView$3$1;

    invoke-direct {v1, p0}, Lcom/ad_stir/ad/BaseAdView$3$1;-><init>(Lcom/ad_stir/ad/BaseAdView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method
