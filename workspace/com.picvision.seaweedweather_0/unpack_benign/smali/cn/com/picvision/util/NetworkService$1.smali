.class Lcn/com/picvision/util/NetworkService$1;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/util/NetworkService;->isActiveNetworks(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/picvision/util/NetworkService;

.field private final synthetic val$netType:I


# direct methods
.method constructor <init>(Lcn/com/picvision/util/NetworkService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/util/NetworkService$1;->this$0:Lcn/com/picvision/util/NetworkService;

    iput p2, p0, Lcn/com/picvision/util/NetworkService$1;->val$netType:I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcn/com/picvision/util/NetworkService$1;->this$0:Lcn/com/picvision/util/NetworkService;

    invoke-static {v1}, Lcn/com/picvision/util/NetworkService;->access$0(Lcn/com/picvision/util/NetworkService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 110
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    iget v1, p0, Lcn/com/picvision/util/NetworkService$1;->val$netType:I

    const-string v2, "internet"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    .line 111
    return-void
.end method
