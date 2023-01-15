.class Ljp/beyond/sdk/layout/BeadView$1;
.super Ljava/lang/Object;
.source "BeadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadView;->applyBannerLayout(Landroid/app/Activity;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadView;

.field private final synthetic val$BannerID:I


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadView$1;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iput p2, p0, Ljp/beyond/sdk/layout/BeadView$1;->val$BannerID:I

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView$1;->this$0:Ljp/beyond/sdk/layout/BeadView;

    iget v1, p0, Ljp/beyond/sdk/layout/BeadView$1;->val$BannerID:I

    invoke-static {v0, v1}, Ljp/beyond/sdk/layout/BeadView;->access$0(Ljp/beyond/sdk/layout/BeadView;I)V

    .line 203
    return-void
.end method
