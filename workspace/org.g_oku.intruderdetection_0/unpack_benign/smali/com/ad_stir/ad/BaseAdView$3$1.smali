.class Lcom/ad_stir/ad/BaseAdView$3$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/ad/BaseAdView$3;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView$3;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$3$1;->this$1:Lcom/ad_stir/ad/BaseAdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$3$1;->this$1:Lcom/ad_stir/ad/BaseAdView$3;

    iget-object v0, v0, Lcom/ad_stir/ad/BaseAdView$3;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$600(Lcom/ad_stir/ad/BaseAdView;)V

    .line 201
    return-void
.end method
