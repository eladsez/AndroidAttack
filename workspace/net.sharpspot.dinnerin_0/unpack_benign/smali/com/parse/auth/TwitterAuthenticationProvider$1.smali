.class Lcom/parse/auth/TwitterAuthenticationProvider$1;
.super Ljava/lang/Object;
.source "TwitterAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/internal/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/auth/TwitterAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

.field private final synthetic val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    iput-object p2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-static {v0, v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$0(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 42
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$1(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eq v0, v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0, p1}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v0, v2}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$2(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v1, v2}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$2(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 52
    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 56
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v2}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$1(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eq v2, v3, :cond_0

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    iget-object v3, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v3}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$3(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/twitter/Twitter;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v4}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$3(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/twitter/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 63
    iget-object v5, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v5}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$3(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/twitter/Twitter;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v6}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$3(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/twitter/Twitter;->getAuthTokenSecret()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    .local v0, "authData":Lorg/json/JSONObject;
    :try_start_1
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v2, v0}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v2, v7}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$2(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    goto :goto_0

    .line 64
    .end local v0    # "authData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v2, v1}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v2, v7}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$2(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    goto :goto_0

    .line 69
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    .line 70
    iget-object v3, p0, Lcom/parse/auth/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {v3, v7}, Lcom/parse/auth/TwitterAuthenticationProvider;->access$2(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 71
    throw v2
.end method
