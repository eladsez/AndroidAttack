.class Lcom/parse/twitter/Twitter$1$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/twitter/Twitter$1;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/twitter/Twitter$1;

.field private final synthetic val$callback:Lcom/parse/internal/AsyncCallback;

.field private final synthetic val$consumer:Lcom/parse/signpost/OAuthConsumer;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/parse/twitter/Twitter$1;Lcom/parse/internal/AsyncCallback;Lcom/parse/signpost/OAuthConsumer;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iput-object p2, p0, Lcom/parse/twitter/Twitter$1$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iput-object p3, p0, Lcom/parse/twitter/Twitter$1$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    iput-object p4, p0, Lcom/parse/twitter/Twitter$1$1;->val$progress:Landroid/app/ProgressDialog;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/parse/twitter/Twitter$1$1;)Lcom/parse/twitter/Twitter$1;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v0}, Lcom/parse/internal/AsyncCallback;->onCancel()V

    .line 192
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 139
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 140
    .local v6, "uri":Landroid/net/Uri;
    const-string v1, "oauth_verifier"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "verifier":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 142
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v1}, Lcom/parse/internal/AsyncCallback;->onCancel()V

    .line 188
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/parse/twitter/Twitter$1$1$1;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    iget-object v4, p0, Lcom/parse/twitter/Twitter$1$1;->val$progress:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/parse/twitter/Twitter$1$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/twitter/Twitter$1$1$1;-><init>(Lcom/parse/twitter/Twitter$1$1;Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;Landroid/app/ProgressDialog;Lcom/parse/internal/AsyncCallback;)V

    .line 187
    .local v0, "getTokenTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/parse/signpost/http/HttpParameters;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    new-instance v1, Lcom/parse/oauth/OAuth1FlowException;

    invoke-direct {v1, p1, p2, p3}, Lcom/parse/oauth/OAuth1FlowException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method
