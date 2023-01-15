.class Ljp/beyond/sdk/Bead$2;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Ljp/beyond/sdk/Bead$2;->this$0:Ljp/beyond/sdk/Bead;

    iput-object p2, p0, Ljp/beyond/sdk/Bead$2;->val$activity:Landroid/app/Activity;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 730
    iget-object v0, p0, Ljp/beyond/sdk/Bead$2;->this$0:Ljp/beyond/sdk/Bead;

    iget-object v1, p0, Ljp/beyond/sdk/Bead$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ljp/beyond/sdk/Bead$2;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v2}, Ljp/beyond/sdk/Bead;->access$3(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/Bead$2;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v3}, Ljp/beyond/sdk/Bead;->access$4(Ljp/beyond/sdk/Bead;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljp/beyond/sdk/Bead$2;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v4}, Ljp/beyond/sdk/Bead;->access$5(Ljp/beyond/sdk/Bead;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljp/beyond/sdk/Bead;->access$6(Ljp/beyond/sdk/Bead;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    .line 731
    return-void
.end method
