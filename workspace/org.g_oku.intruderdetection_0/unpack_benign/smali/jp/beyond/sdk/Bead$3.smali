.class Ljp/beyond/sdk/Bead$3;
.super Ljava/util/TimerTask;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead;->showView(Landroid/app/Activity;)Landroid/view/View;
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
    iput-object p1, p0, Ljp/beyond/sdk/Bead$3;->this$0:Ljp/beyond/sdk/Bead;

    iput-object p2, p0, Ljp/beyond/sdk/Bead$3;->val$activity:Landroid/app/Activity;

    .line 741
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Ljp/beyond/sdk/Bead$3;->this$0:Ljp/beyond/sdk/Bead;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 744
    iget-object v0, p0, Ljp/beyond/sdk/Bead$3;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$7(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/utilities/ConnectionUtil;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljp/beyond/sdk/utilities/ConnectionUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Ljp/beyond/sdk/Bead$3;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljp/beyond/sdk/Bead;->requestAd(Landroid/app/Activity;)V

    .line 749
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljp/beyond/sdk/Bead$3$1;

    iget-object v2, p0, Ljp/beyond/sdk/Bead$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Ljp/beyond/sdk/Bead$3$1;-><init>(Ljp/beyond/sdk/Bead$3;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method
