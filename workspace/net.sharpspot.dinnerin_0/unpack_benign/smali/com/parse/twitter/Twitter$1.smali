.class Lcom/parse/twitter/Twitter$1;
.super Landroid/os/AsyncTask;
.source "Twitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/twitter/Twitter;->authorize(Landroid/content/Context;Lcom/parse/internal/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/parse/twitter/Twitter;

.field private final synthetic val$callback:Lcom/parse/internal/AsyncCallback;

.field private final synthetic val$consumer:Lcom/parse/signpost/OAuthConsumer;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/parse/twitter/Twitter;Landroid/app/ProgressDialog;Lcom/parse/internal/AsyncCallback;Landroid/content/Context;Lcom/parse/signpost/OAuthConsumer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    iput-object p2, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iput-object p4, p0, Lcom/parse/twitter/Twitter$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    .line 118
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/parse/twitter/Twitter$1;)Lcom/parse/twitter/Twitter;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parse/twitter/Twitter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Lcom/parse/twitter/Twitter;->access$0()Lcom/parse/signpost/OAuthProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    const-string v3, "twitter-oauth://complete"

    invoke-interface {v1, v2, v3}, Lcom/parse/signpost/OAuthProvider;->retrieveRequestToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/parse/twitter/Twitter$1;->error:Ljava/lang/Throwable;

    .line 213
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parse/twitter/Twitter$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1;->error:Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 198
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 130
    new-instance v0, Lcom/parse/oauth/OAuth1FlowDialog;

    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$context:Landroid/content/Context;

    const-string v3, "twitter-oauth://complete"

    .line 131
    const-string v4, "api.twitter"

    new-instance v5, Lcom/parse/twitter/Twitter$1$1;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iget-object v6, p0, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    iget-object v7, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {v5, p0, v2, v6, v7}, Lcom/parse/twitter/Twitter$1$1;-><init>(Lcom/parse/twitter/Twitter$1;Lcom/parse/internal/AsyncCallback;Lcom/parse/signpost/OAuthConsumer;Landroid/app/ProgressDialog;)V

    move-object v2, p1

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/parse/oauth/OAuth1FlowDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;)V

    .line 194
    .local v0, "dialog":Lcom/parse/oauth/OAuth1FlowDialog;
    invoke-virtual {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 195
    .end local v0    # "dialog":Lcom/parse/oauth/OAuth1FlowDialog;
    :catchall_0
    move-exception v1

    .line 196
    iget-object v2, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 197
    throw v1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 203
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 204
    return-void
.end method
