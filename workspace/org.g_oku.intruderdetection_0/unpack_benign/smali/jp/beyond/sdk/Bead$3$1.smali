.class Ljp/beyond/sdk/Bead$3$1;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/Bead$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/beyond/sdk/Bead$3;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/Bead$3;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    iput-object p2, p0, Ljp/beyond/sdk/Bead$3$1;->val$activity:Landroid/app/Activity;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 751
    const-string v0, "BEAD TIMER"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v2}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v2

    invoke-static {v2}, Ljp/beyond/sdk/Bead;->access$8(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v2}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v2

    invoke-static {v2}, Ljp/beyond/sdk/Bead;->access$3(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v2}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v2

    invoke-static {v2}, Ljp/beyond/sdk/Bead;->access$4(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v2}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v2

    invoke-static {v2}, Ljp/beyond/sdk/Bead;->access$5(Ljp/beyond/sdk/Bead;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v0}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/Bead$3$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v2}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v2

    invoke-static {v2}, Ljp/beyond/sdk/Bead;->access$3(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v3}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v3

    invoke-static {v3}, Ljp/beyond/sdk/Bead;->access$4(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljp/beyond/sdk/Bead$3$1;->this$1:Ljp/beyond/sdk/Bead$3;

    invoke-static {v4}, Ljp/beyond/sdk/Bead$3;->access$0(Ljp/beyond/sdk/Bead$3;)Ljp/beyond/sdk/Bead;

    move-result-object v4

    invoke-static {v4}, Ljp/beyond/sdk/Bead;->access$5(Ljp/beyond/sdk/Bead;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljp/beyond/sdk/Bead;->access$6(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    .line 753
    return-void
.end method
