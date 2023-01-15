.class public Lcom/parse/auth/TwitterAuthenticationProvider;
.super Ljava/lang/Object;
.source "TwitterAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider;


# static fields
.field private static final AUTH_TOKEN_KEY:Ljava/lang/String; = "auth_token"

.field private static final AUTH_TOKEN_SECRET_KEY:Ljava/lang/String; = "auth_token_secret"

.field private static final CONSUMER_KEY_KEY:Ljava/lang/String; = "consumer_key"

.field private static final CONSUMER_SECRET_KEY:Ljava/lang/String; = "consumer_secret"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final SCREEN_NAME_KEY:Ljava/lang/String; = "screen_name"


# instance fields
.field private baseContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

.field private final twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method public constructor <init>(Lcom/parse/twitter/Twitter;)V
    .locals 0
    .param p1, "twitter"    # Lcom/parse/twitter/Twitter;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/parse/auth/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-void
.end method

.method static synthetic access$3(Lcom/parse/auth/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method private handleCancel(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iput-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    iput-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 118
    throw v0
.end method


# virtual methods
.method public authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/parse/auth/TwitterAuthenticationProvider;->cancel()V

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 33
    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 34
    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    const-string v2, "Context must be non-null for Twitter authentication to proceed."

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    goto :goto_0

    .line 38
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v1, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    new-instance v2, Lcom/parse/auth/TwitterAuthenticationProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/auth/TwitterAuthenticationProvider$1;-><init>(Lcom/parse/auth/TwitterAuthenticationProvider;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/parse/twitter/Twitter;->authorize(Landroid/content/Context;Lcom/parse/internal/AsyncCallback;)V

    .line 74
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-direct {p0, v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 90
    return-void
.end method

.method public deauthenticate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v0, v1}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v0, "authData":Lorg/json/JSONObject;
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "auth_token_secret"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "consumer_key"

    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "consumer_secret"

    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "twitter"

    return-object v0
.end method

.method public getTwitter()Lcom/parse/twitter/Twitter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 138
    :goto_0
    return v1

    .line 131
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "auth_token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "auth_token_secret"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;

    const-string v3, "screen_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/auth/TwitterAuthenticationProvider;->baseContext:Ljava/lang/ref/WeakReference;

    .line 145
    return-void
.end method
