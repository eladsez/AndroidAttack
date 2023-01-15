.class public Lcom/parse/auth/FacebookAuthenticationProvider;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider;


# static fields
.field private static final AUTH_TYPE_NAME:Ljava/lang/String; = "facebook"

.field public static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99


# instance fields
.field private activityCode:I

.field private applicationContext:Landroid/content/Context;

.field private applicationId:Ljava/lang/String;

.field private baseActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private facebook:Lcom/facebook/android/Facebook;

.field private permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final preciseDateFormat:Ljava/text/DateFormat;

.field private session:Lcom/facebook/Session;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    .line 43
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 54
    const/16 v0, 0x7f99

    iput v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I

    .line 67
    iput-object p2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->applicationId:Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->applicationContext:Landroid/content/Context;

    .line 73
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    new-instance v0, Lcom/facebook/android/Facebook;

    invoke-direct {v0, p2}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    .line 76
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/parse/auth/FacebookAuthenticationProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/parse/auth/FacebookAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/parse/auth/FacebookAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V

    return-void
.end method

.method private handleCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 207
    throw v0
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0, p1}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 217
    throw v0
.end method

.method private handleSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 230
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v2, :cond_0

    .line 248
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "authData":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    :try_start_1
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v2, v0}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    iput-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 245
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    .line 246
    iput-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 247
    throw v2
.end method


# virtual methods
.method public declared-synchronized authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->cancel()V

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 107
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 108
    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_2

    .line 109
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 110
    const-string v4, "Activity must be non-null for Facebook authentication to proceed."

    .line 109
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 107
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    move-object v0, v3

    goto :goto_0

    .line 112
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I

    .line 113
    .local v1, "activityCode":I
    new-instance v3, Lcom/facebook/Session$Builder;

    invoke-direct {v3, v0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->applicationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v3

    .line 114
    new-instance v4, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v4, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v3

    .line 113
    iput-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    .line 116
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v2, v0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 117
    .local v2, "openRequest":Lcom/facebook/Session$OpenRequest;
    invoke-virtual {v2, v1}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    .line 118
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 121
    :cond_3
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    if-eqz v3, :cond_4

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 124
    :cond_4
    new-instance v3, Lcom/parse/auth/FacebookAuthenticationProvider$2;

    invoke-direct {v3, p0}, Lcom/parse/auth/FacebookAuthenticationProvider$2;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 156
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v3, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deauthenticate()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    .line 323
    return-void
.end method

.method public declared-synchronized extendAccessToken(Landroid/content/Context;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->cancel()V

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 84
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    new-instance v2, Lcom/parse/auth/FacebookAuthenticationProvider$1;

    invoke-direct {v2, p0}, Lcom/parse/auth/FacebookAuthenticationProvider$1;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    invoke-virtual {v1, p1, v2}, Lcom/facebook/android/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z

    move-result v0

    .line 97
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getActivityCode()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I

    return v0
.end method

.method public getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v0, "authData":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v1, "expiration_date"

    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "facebook"

    return-object v0
.end method

.method public getFacebook()Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 165
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 11
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 281
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    if-eqz v7, :cond_0

    .line 282
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 283
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v7, v10}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 285
    :cond_0
    iput-object v10, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    .line 316
    :goto_0
    return v6

    .line 289
    :cond_1
    :try_start_0
    const-string v7, "access_token"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    const-string v8, "expiration_date"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 293
    .local v3, "expirationDate":Ljava/util/Date;
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    if-eqz v7, :cond_2

    .line 294
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v7, v0}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 295
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 297
    :cond_2
    new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    .line 298
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->applicationContext:Landroid/content/Context;

    .line 297
    invoke-direct {v5, v7}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    .line 299
    .local v5, "tcs":Lcom/facebook/TokenCachingStrategy;
    invoke-virtual {v5}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v1

    .line 300
    .local v1, "data":Landroid/os/Bundle;
    const-string v7, "access_token"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/facebook/TokenCachingStrategy;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 301
    invoke-static {v1, v3}, Lcom/facebook/TokenCachingStrategy;->putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V

    .line 302
    invoke-virtual {v5, v1}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 305
    new-instance v7, Lcom/facebook/Session$Builder;

    iget-object v8, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->applicationContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    iget-object v8, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->applicationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v4

    .line 307
    .local v4, "newSession":Lcom/facebook/Session;
    invoke-virtual {v4}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    sget-object v8, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-ne v7, v8, :cond_3

    .line 308
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 309
    iput-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    .line 310
    iget-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;

    invoke-static {v7}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    goto :goto_0

    .line 315
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "expirationDate":Ljava/util/Date;
    .end local v4    # "newSession":Lcom/facebook/Session;
    .end local v5    # "tcs":Lcom/facebook/TokenCachingStrategy;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0

    .line 312
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "accessToken":Ljava/lang/String;
    .restart local v1    # "data":Landroid/os/Bundle;
    .restart local v3    # "expirationDate":Ljava/util/Date;
    .restart local v4    # "newSession":Lcom/facebook/Session;
    .restart local v5    # "tcs":Lcom/facebook/TokenCachingStrategy;
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->session:Lcom/facebook/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActivityCode(I)V
    .locals 1
    .param p1, "activityCode"    # I

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPermissions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
