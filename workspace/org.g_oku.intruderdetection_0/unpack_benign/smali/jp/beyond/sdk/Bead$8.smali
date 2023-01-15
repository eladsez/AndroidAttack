.class Ljp/beyond/sdk/Bead$8;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead;->createViewEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/Bead;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/Bead$8;->this$0:Ljp/beyond/sdk/Bead;

    iput-object p2, p0, Ljp/beyond/sdk/Bead$8;->val$activity:Landroid/app/Activity;

    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerLogoViewClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1721
    iget-object v0, p0, Ljp/beyond/sdk/Bead$8;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ljp/beyond/sdk/Bead;->access$22(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1722
    return-void
.end method

.method public onWebViewClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1715
    iget-object v0, p0, Ljp/beyond/sdk/Bead$8;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ljp/beyond/sdk/Bead;->access$22(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1716
    return-void
.end method
