.class Ljp/beyond/beadsdkwrapper/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/beadsdkwrapper/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/beadsdkwrapper/MainActivity;


# direct methods
.method constructor <init>(Ljp/beyond/beadsdkwrapper/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/beadsdkwrapper/MainActivity$1;->this$0:Ljp/beyond/beadsdkwrapper/MainActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity$1;->this$0:Ljp/beyond/beadsdkwrapper/MainActivity;

    invoke-static {v0}, Ljp/beyond/beadsdkwrapper/MainActivity;->access$0(Ljp/beyond/beadsdkwrapper/MainActivity;)Ljp/beyond/sdk/Bead;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity$1;->this$0:Ljp/beyond/beadsdkwrapper/MainActivity;

    invoke-virtual {v0, v1}, Ljp/beyond/sdk/Bead;->showAd(Landroid/app/Activity;)Z

    .line 49
    return-void
.end method
