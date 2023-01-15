.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "ParsePush.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"


# instance fields
.field private channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lorg/json/JSONObject;

.field private expirationTime:Ljava/lang/Long;

.field private expirationTimeInterval:Ljava/lang/Long;

.field private pushToAndroid:Ljava/lang/Boolean;

.field private pushToIOS:Ljava/lang/Boolean;

.field private query:Lcom/parse/ParseQuery;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 23
    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 24
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 25
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 26
    iput-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    .line 27
    iput-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method private sendAsync()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->buildCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/parse/ParsePush$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePush$1;-><init>(Lcom/parse/ParsePush;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)V
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "query"    # Lcom/parse/ParseQuery;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V

    .line 86
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "query"    # Lcom/parse/ParseQuery;
    .param p2, "callback"    # Lcom/parse/SendCallback;

    .prologue
    .line 102
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 103
    .local v0, "push":Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 104
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 106
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "query"    # Lcom/parse/ParseQuery;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V

    .line 51
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "query"    # Lcom/parse/ParseQuery;
    .param p2, "callback"    # Lcom/parse/SendCallback;

    .prologue
    .line 66
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 67
    .local v0, "push":Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 68
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 70
    return-void
.end method


# virtual methods
.method buildCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 8
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "client_push"

    invoke-direct {v0, v5, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v0, "command":Lcom/parse/ParseCommand;
    iget-object v5, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    if-nez v5, :cond_0

    .line 272
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 273
    const-string v4, "Cannot send a push without calling either setMessage or setData"

    .line 272
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_0
    const-string v5, "data"

    iget-object v6, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 277
    iget-object v5, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-eqz v5, :cond_4

    .line 278
    const-string v5, "where"

    iget-object v6, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    invoke-virtual {v6}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 288
    :goto_0
    iget-object v5, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    if-eqz v5, :cond_6

    .line 289
    const-string v5, "expiration_time"

    iget-object v6, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    .line 294
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v5, :cond_3

    .line 296
    iget-object v5, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    move v1, v3

    .line 297
    .local v1, "willPushToAndroid":Z
    :goto_2
    iget-object v5, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    move v2, v4

    .line 298
    .local v2, "willPushToIOS":Z
    :goto_3
    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    .line 300
    :cond_2
    if-eqz v2, :cond_9

    .line 301
    const-string v3, "type"

    const-string v4, "ios"

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .end local v1    # "willPushToAndroid":Z
    .end local v2    # "willPushToIOS":Z
    :cond_3
    :goto_4
    return-object v0

    .line 279
    :cond_4
    iget-object v5, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    if-nez v5, :cond_5

    .line 281
    const-string v5, "channel"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_5
    const-string v5, "channels"

    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 290
    :cond_6
    iget-object v5, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 291
    const-string v5, "expiration_time_interval"

    iget-object v6, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    move v1, v4

    .line 296
    goto :goto_2

    .restart local v1    # "willPushToAndroid":Z
    :cond_8
    move v2, v3

    .line 297
    goto :goto_3

    .line 302
    .restart local v2    # "willPushToIOS":Z
    :cond_9
    if-eqz v1, :cond_a

    .line 303
    const-string v3, "type"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 305
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 306
    const-string v4, "Cannot push if both pushToIOS and pushToAndroid are false"

    .line 305
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public clearExpiration()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 182
    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 183
    return-void
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/parse/ParsePush;->sendAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public sendInBackground()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 264
    return-void
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SendCallback;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/parse/ParsePush;->sendAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 256
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "channel cannot be null"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 116
    iget-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 118
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 6
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
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "channels collection cannot be null"

    invoke-static {v1, v4}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 131
    iget-object v1, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 133
    return-void

    :cond_0
    move v1, v3

    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "channel":Ljava/lang/String;
    if-eqz v0, :cond_2

    move v1, v2

    :goto_2
    const-string v5, "channel cannot be null"

    invoke-static {v1, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/parse/ParsePush;->data:Lorg/json/JSONObject;

    .line 210
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 161
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 163
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 1
    .param p1, "timeInterval"    # J

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTime:Ljava/lang/Long;

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->expirationTimeInterval:Ljava/lang/Long;

    .line 175
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 219
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "alert"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 224
    return-void

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .param p1, "pushToAndroid"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 200
    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    .line 199
    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 201
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    .line 202
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .param p1, "pushToIOS"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 191
    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    .line 190
    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 192
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    .line 193
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 4
    .param p1, "query"    # Lcom/parse/ParseQuery;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot target a null query"

    invoke-static {v0, v3}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/parse/ParsePush;->pushToIOS:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePush;->pushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 146
    :goto_1
    const-string v0, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    .line 145
    invoke-static {v1, v0}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_Installation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    const-string v1, "Can only push to a query for Installations"

    .line 147
    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->channelSet:Ljava/util/Set;

    .line 150
    iput-object p1, p0, Lcom/parse/ParsePush;->query:Lcom/parse/ParseQuery;

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 145
    goto :goto_1
.end method
