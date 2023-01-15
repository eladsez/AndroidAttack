.class Ljp/beyond/beadsdkwrapper/MainActivity$2;
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
    iput-object p1, p0, Ljp/beyond/beadsdkwrapper/MainActivity$2;->this$0:Ljp/beyond/beadsdkwrapper/MainActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity$2;->this$0:Ljp/beyond/beadsdkwrapper/MainActivity;

    const/4 v1, 0x0

    iput v1, v0, Ljp/beyond/beadsdkwrapper/MainActivity;->k:I

    .line 59
    return-void
.end method
