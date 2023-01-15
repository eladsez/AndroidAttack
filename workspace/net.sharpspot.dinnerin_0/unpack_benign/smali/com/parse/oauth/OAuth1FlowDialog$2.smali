.class Lcom/parse/oauth/OAuth1FlowDialog$2;
.super Ljava/lang/Object;
.source "OAuth1FlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/oauth/OAuth1FlowDialog;->createCloseImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/oauth/OAuth1FlowDialog;


# direct methods
.method constructor <init>(Lcom/parse/oauth/OAuth1FlowDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/oauth/OAuth1FlowDialog$2;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$2;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->cancel()V

    .line 81
    return-void
.end method
