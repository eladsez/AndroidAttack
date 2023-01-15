.class public Lcom/parse/auth/AnonymousAuthenticationProvider;
.super Ljava/lang/Object;
.source "AnonymousAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/auth/AnonymousAuthenticationProvider;->getAuthData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public deauthenticate()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public getAuthData()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "authData":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "anonymous"

    return-object v0
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
