.class Ljp/beyond/sdk/Bead$7;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;
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
    iput-object p1, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    iput-object p2, p0, Ljp/beyond/sdk/Bead$7;->val$activity:Landroid/app/Activity;

    .line 1621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1664
    const-string v0, "bead"

    const-string v1, "KeyClicked 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1668
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$13(Ljp/beyond/sdk/Bead;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1670
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$15(Ljp/beyond/sdk/Bead;Landroid/app/Dialog;)V

    .line 1691
    :cond_0
    :goto_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$19(Ljp/beyond/sdk/Bead;)V

    .line 1694
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    .line 1698
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, v3}, Ljp/beyond/sdk/Bead;->access$18(Ljp/beyond/sdk/Bead;Z)V

    .line 1699
    sput-boolean v3, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1700
    return-void

    .line 1677
    :cond_2
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$23(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/Bead$DialogType;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/Bead$DialogType;->Exit:Ljp/beyond/sdk/Bead$DialogType;

    if-ne v0, v1, :cond_0

    .line 1679
    const-string v0, "Bead"

    const-string v1, "NEW AD Display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v2, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v2, v2, Ljp/beyond/sdk/Bead;->CurrentActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Ljp/beyond/sdk/Bead;->access$16(Ljp/beyond/sdk/Bead;Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$15(Ljp/beyond/sdk/Bead;Landroid/app/Dialog;)V

    .line 1682
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f080003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1685
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$14(Ljp/beyond/sdk/Bead;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onCancelButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1633
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$18(Ljp/beyond/sdk/Bead;Z)V

    .line 1634
    sput-boolean v1, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1636
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    .line 1641
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, p1}, Ljp/beyond/sdk/Bead;->access$20(Ljp/beyond/sdk/Bead;Landroid/view/View;)V

    .line 1642
    return-void
.end method

.method public onDownloadButtonClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1627
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ljp/beyond/sdk/Bead;->access$22(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1628
    return-void
.end method

.method public onFinishButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1647
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$18(Ljp/beyond/sdk/Bead;Z)V

    .line 1648
    sput-boolean v1, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1649
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$21(Ljp/beyond/sdk/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$21(Ljp/beyond/sdk/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1656
    :goto_0
    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
