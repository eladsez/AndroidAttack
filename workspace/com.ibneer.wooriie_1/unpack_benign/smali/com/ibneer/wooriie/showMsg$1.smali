.class Lcom/ibneer/wooriie/showMsg$1;
.super Ljava/lang/Object;
.source "showMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibneer/wooriie/showMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/showMsg;


# direct methods
.method constructor <init>(Lcom/ibneer/wooriie/showMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibneer/wooriie/showMsg$1;->this$0:Lcom/ibneer/wooriie/showMsg;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 43
    invoke-static {}, Lcom/ibneer/wooriie/PushWakeLock;->releaseCpuLock()V

    .line 44
    iget-object v0, p0, Lcom/ibneer/wooriie/showMsg$1;->this$0:Lcom/ibneer/wooriie/showMsg;

    invoke-virtual {v0}, Lcom/ibneer/wooriie/showMsg;->finish()V

    .line 45
    return-void
.end method
