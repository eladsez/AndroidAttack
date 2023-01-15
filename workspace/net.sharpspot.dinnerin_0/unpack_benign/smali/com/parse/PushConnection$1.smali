.class Lcom/parse/PushConnection$1;
.super Ljava/lang/Object;
.source "PushConnection.java"

# interfaces
.implements Lcom/parse/ConnectivityNotifier$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/PushConnection$1;->this$0:Lcom/parse/PushConnection;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkConnectivityStatusChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parse/PushConnection$1;->this$0:Lcom/parse/PushConnection;

    invoke-virtual {v0}, Lcom/parse/PushConnection;->close()V

    .line 45
    return-void
.end method
