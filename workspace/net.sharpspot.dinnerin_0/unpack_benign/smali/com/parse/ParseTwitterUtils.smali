.class public final Lcom/parse/ParseTwitterUtils;
.super Ljava/lang/Object;
.source "ParseTwitterUtils.java"


# static fields
.field private static isInitialized:Z

.field private static provider:Lcom/parse/auth/TwitterAuthenticationProvider;

.field private static twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 49
    sget-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    const-string v1, "You must call ParseTwitterUtils.initialize() before using ParseTwitterUtils"

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method private static getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/auth/TwitterAuthenticationProvider;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/auth/TwitterAuthenticationProvider;-><init>(Lcom/parse/twitter/Twitter;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/auth/TwitterAuthenticationProvider;

    .line 19
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/auth/TwitterAuthenticationProvider;

    return-object v0
.end method

.method public static getTwitter()Lcom/parse/twitter/Twitter;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/parse/twitter/Twitter;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/parse/twitter/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    .line 29
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/twitter/Twitter;->setConsumerKey(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/twitter/Twitter;->setConsumerSecret(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    .line 46
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 67
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 83
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 84
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/auth/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    .line 85
    invoke-static {v0, p2, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;

    .line 87
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "twitterId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 95
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "twitterId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "authTokenSecret"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 117
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 119
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v2

    .line 121
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    invoke-virtual {p0, v1, v2}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p5, :cond_0

    .line 124
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p5, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static logIn(Landroid/content/Context;Lcom/parse/LogInCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 173
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 174
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/auth/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)V

    .line 176
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    const/4 v1, 0x1

    .line 175
    invoke-static {v0, p1, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;

    .line 177
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 3
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "authTokenSecret"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 148
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 150
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v2

    .line 153
    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 150
    invoke-static {v1, v2}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p4, :cond_0

    .line 156
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p4, v1, v2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static unlink(Lcom/parse/ParseUser;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 184
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseTwitterUtils;->unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V

    .line 192
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 199
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 201
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    .line 200
    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 202
    return-void
.end method
