.class Ljp/beyond/sdk/Bead$5;
.super Landroid/view/OrientationEventListener;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead;->doFirstSettingForRequestAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/Bead;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/Bead;Landroid/content/Context;ILandroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    iput-object p4, p0, Ljp/beyond/sdk/Bead$5;->val$context:Landroid/content/Context;

    .line 885
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 888
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/beyond/sdk/Bead$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 890
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$eOrientation;->Portrait:Ljp/beyond/sdk/Bead$eOrientation;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$10(Ljp/beyond/sdk/Bead;Ljp/beyond/sdk/Bead$eOrientation;)V

    .line 895
    :goto_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$11(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$eOrientation;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v1}, Ljp/beyond/sdk/Bead;->access$12(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$eOrientation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 896
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$13(Ljp/beyond/sdk/Bead;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    sget-object v0, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v1, "Orientation changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 902
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$15(Ljp/beyond/sdk/Bead;Landroid/app/Dialog;)V

    .line 904
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v2, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v2, v2, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Ljp/beyond/sdk/Bead;->access$16(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$15(Ljp/beyond/sdk/Bead;Landroid/app/Dialog;)V

    .line 908
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 913
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v1}, Ljp/beyond/sdk/Bead;->access$11(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$eOrientation;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$17(Ljp/beyond/sdk/Bead;Ljp/beyond/sdk/Bead$eOrientation;)V

    .line 915
    return-void

    .line 893
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/Bead$5;->this$0:Ljp/beyond/sdk/Bead;

    sget-object v1, Ljp/beyond/sdk/Bead$eOrientation;->Landscape:Ljp/beyond/sdk/Bead$eOrientation;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$10(Ljp/beyond/sdk/Bead;Ljp/beyond/sdk/Bead$eOrientation;)V

    goto :goto_0
.end method
