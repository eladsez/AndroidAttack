.class Lcom/parse/oauth/OAuth1FlowDialog$1;
.super Ljava/lang/Object;
.source "OAuth1FlowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/oauth/OAuth1FlowDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;)V
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
    iput-object p1, p0, Lcom/parse/oauth/OAuth1FlowDialog$1;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$1;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$1(Lcom/parse/oauth/OAuth1FlowDialog;)Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;->onCancel()V

    .line 49
    return-void
.end method
