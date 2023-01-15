.class public final Lcom/parse/ParseFacebookUtils;
.super Ljava/lang/Object;
.source "ParseFacebookUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFacebookUtils$Permissions;
    }
.end annotation


# static fields
.field private static isInitialized:Z

.field private static provider:Lcom/parse/auth/FacebookAuthenticationProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$0()Lcom/parse/auth/FacebookAuthenticationProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    return-object v0
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/parse/ParseFacebookUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 89
    const-string v1, "You must call ParseFacebookUtils.initialize() before using ParseFacebookUtils"

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-void
.end method

.method public static extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 425
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    .line 426
    new-instance v1, Lcom/parse/ParseFacebookUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/parse/ParseFacebookUtils$1;-><init>(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V

    .line 425
    invoke-virtual {v0, p1, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->extendAccessToken(Landroid/content/Context;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 445
    return-void
.end method

.method public static extendAccessTokenIfNeeded(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)Z
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->shouldExtendAccessToken(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 455
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static finishAuthentication(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p0, p1, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    :cond_0
    return-void
.end method

.method public static getFacebook()Lcom/facebook/android/Facebook;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    const-string v1, "You must initialize ParseFacebookUtils before calling getFacebook()"

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getFacebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    return-object v0
.end method

.method public static getSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "You must initialize ParseFacebookUtils before calling getSession()"

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    const-string v1, "You must call Parse.initialize() before calling ParseFacebookUtils.initialize()"

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    new-instance v0, Lcom/parse/auth/FacebookAuthenticationProvider;

    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/parse/auth/FacebookAuthenticationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    .line 82
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseFacebookUtils;->isInitialized:Z

    .line 84
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "facebook"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;)V
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 260
    const/16 v1, 0x7f99

    const/4 v2, 0x0

    .line 259
    invoke-static {p0, v0, p1, v1, v2}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 261
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;I)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityCode"    # I

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 253
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;ILcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityCode"    # I
    .param p3, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 238
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;Lcom/parse/SaveCallback;)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 245
    const/16 v1, 0x7f99

    .line 244
    invoke-static {p0, v0, p1, v1, p2}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 246
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "facebookId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/SaveCallback;)V

    .line 122
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/SaveCallback;)V
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "facebookId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "expirationDate"    # Ljava/util/Date;
    .param p4, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 142
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 145
    :try_start_0
    sget-object v1, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    .line 146
    sget-object v2, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v2

    .line 145
    invoke-virtual {p0, v1, v2}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;

    move-result-object v1

    .line 144
    invoke-static {v1, p4}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p4, :cond_0

    .line 149
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p4, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x7f99

    .line 230
    const/4 v1, 0x0

    .line 229
    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 231
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 223
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activityCode"    # I
    .param p4, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 197
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivity(Landroid/app/Activity;)V

    .line 198
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p3}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivityCode(I)V

    .line 199
    if-nez p1, :cond_0

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 202
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->setPermissions(Ljava/util/Collection;)V

    .line 203
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;

    .line 204
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x7f99

    invoke-static {p0, p1, p2, v0, p3}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 215
    return-void
.end method

.method public static logIn(Landroid/app/Activity;ILcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "activityCode"    # I
    .param p2, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V

    .line 347
    return-void
.end method

.method public static logIn(Landroid/app/Activity;Lcom/parse/LogInCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 364
    const/16 v1, 0x7f99

    .line 363
    invoke-static {v0, p0, v1, p1}, Lcom/parse/ParseFacebookUtils;->logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V

    .line 365
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/LogInCallback;)V
    .locals 3
    .param p0, "facebookId"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expirationDate"    # Ljava/util/Date;
    .param p3, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 279
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 282
    :try_start_0
    sget-object v1, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v2, p0, p1, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v2

    .line 282
    invoke-static {v1, v2}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;

    move-result-object v1

    .line 281
    invoke-static {v1, p3}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p3, :cond_0

    .line 286
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3, v1, v2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityCode"    # I
    .param p3, "callback"    # Lcom/parse/LogInCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcom/parse/LogInCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 332
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivity(Landroid/app/Activity;)V

    .line 333
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivityCode(I)V

    .line 334
    if-nez p0, :cond_0

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 337
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0, p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->setPermissions(Ljava/util/Collection;)V

    .line 338
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    .line 339
    const/4 v1, 0x1

    .line 338
    invoke-static {v0, p3, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;

    .line 340
    return-void
.end method

.method public static logIn(Ljava/util/Collection;Landroid/app/Activity;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/parse/LogInCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/parse/LogInCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x7f99

    invoke-static {p0, p1, v0, p2}, Lcom/parse/ParseFacebookUtils;->logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V

    .line 357
    return-void
.end method

.method public static saveLatestSessionData(Lcom/parse/ParseUser;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseFacebookUtils;->saveLatestSessionData(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V

    .line 408
    return-void
.end method

.method public static saveLatestSessionData(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 395
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 396
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The user must already be linked to Facebook."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getSession()Lcom/facebook/Session;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    .line 399
    invoke-static {p0, v0, v1, v2, p1}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/SaveCallback;)V

    .line 401
    return-void
.end method

.method public static shouldExtendAccessToken(Lcom/parse/ParseUser;)Z
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getFacebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 97
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 98
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseFacebookUtils;->unlinkInBackground(Lcom/parse/ParseUser;)V

    .line 106
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 113
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 114
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 115
    return-void
.end method
