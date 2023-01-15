.class Lcom/parse/ParseFacebookUtils$1;
.super Ljava/lang/Object;
.source "ParseFacebookUtils.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFacebookUtils;->extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/parse/SaveCallback;

.field private final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFacebookUtils$1;->val$user:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, v1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 443
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 437
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->access$0()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    const/4 v2, 0x1

    .line 429
    invoke-static {v0, v1, v2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;

    .line 431
    return-void
.end method
