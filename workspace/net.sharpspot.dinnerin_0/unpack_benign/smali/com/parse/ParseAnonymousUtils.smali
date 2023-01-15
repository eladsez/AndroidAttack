.class public final Lcom/parse/ParseAnonymousUtils;
.super Ljava/lang/Object;
.source "ParseAnonymousUtils.java"


# static fields
.field static final ANONYMOUS_AUTH_TYPE:Ljava/lang/String; = "anonymous"

.field private static provider:Lcom/parse/auth/AnonymousAuthenticationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->initialize()V

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static initialize()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/auth/AnonymousAuthenticationProvider;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/parse/auth/AnonymousAuthenticationProvider;

    invoke-direct {v0}, Lcom/parse/auth/AnonymousAuthenticationProvider;-><init>()V

    sput-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/auth/AnonymousAuthenticationProvider;

    .line 42
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/auth/AnonymousAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static lazyLogIn()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/auth/AnonymousAuthenticationProvider;

    invoke-virtual {v1}, Lcom/parse/auth/AnonymousAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/auth/AnonymousAuthenticationProvider;

    invoke-virtual {v2}, Lcom/parse/auth/AnonymousAuthenticationProvider;->getAuthData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseUser;->logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static logIn(Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 65
    sget-object v0, Lcom/parse/ParseAnonymousUtils;->provider:Lcom/parse/auth/AnonymousAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/auth/AnonymousAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 66
    return-void
.end method
