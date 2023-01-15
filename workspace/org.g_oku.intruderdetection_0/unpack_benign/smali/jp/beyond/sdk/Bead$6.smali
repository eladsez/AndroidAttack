.class Ljp/beyond/sdk/Bead$6;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead;->createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;
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
    iput-object p1, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    iput-object p2, p0, Ljp/beyond/sdk/Bead$6;->val$activity:Landroid/app/Activity;

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1593
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$18(Ljp/beyond/sdk/Bead;Z)V

    .line 1594
    sput-boolean v1, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1596
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v0, v1, :cond_2

    .line 1598
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->cancelRequest()V

    .line 1602
    :goto_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 1603
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$19(Ljp/beyond/sdk/Bead;)V

    .line 1606
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1607
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    .line 1610
    :cond_1
    return-void

    .line 1600
    :cond_2
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$19(Ljp/beyond/sdk/Bead;)V

    goto :goto_0
.end method

.method public onCancelButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1557
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$18(Ljp/beyond/sdk/Bead;Z)V

    .line 1558
    sput-boolean v1, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1560
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Received:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-eq v0, v1, :cond_1

    .line 1562
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->cancelRequest()V

    .line 1566
    :goto_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 1567
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$19(Ljp/beyond/sdk/Bead;)V

    .line 1570
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, p1}, Ljp/beyond/sdk/Bead;->access$20(Ljp/beyond/sdk/Bead;Landroid/view/View;)V

    .line 1571
    return-void

    .line 1564
    :cond_1
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$19(Ljp/beyond/sdk/Bead;)V

    goto :goto_0
.end method

.method public onDownloadButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1575
    return-void
.end method

.method public onFinishButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1580
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0, v1}, Ljp/beyond/sdk/Bead;->access$18(Ljp/beyond/sdk/Bead;Z)V

    .line 1581
    sput-boolean v1, Ljp/beyond/sdk/Bead;->isOthersAdShown:Z

    .line 1582
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$21(Ljp/beyond/sdk/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$21(Ljp/beyond/sdk/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1589
    :goto_0
    return-void

    .line 1587
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
