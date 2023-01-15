.class public Lcom/parse/ParseACL;
.super Ljava/lang/Object;
.source "ParseACL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseACL$UserResolutionListener;
    }
.end annotation


# static fields
.field private static final PUBLIC_KEY:Ljava/lang/String; = "*"

.field private static final UNRESOLVED_KEY:Ljava/lang/String; = "*unresolved"

.field private static defaultACL:Lcom/parse/ParseACL;

.field private static defaultACLUsesCurrentUser:Z

.field private static defaultACLWithCurrentUser:Lcom/parse/ParseACL;

.field private static lastCurrentUser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private permissionsById:Lorg/json/JSONObject;

.field private shared:Z

.field private unresolvedUser:Lcom/parse/ParseUser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseUser;)V
    .locals 1
    .param p1, "owner"    # Lcom/parse/ParseUser;

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-direct {p0}, Lcom/parse/ParseACL;-><init>()V

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 114
    return-void
.end method

.method static synthetic access$0(Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->resolveUser(Lcom/parse/ParseUser;)V

    return-void
.end method

.method static createACLFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    new-instance v1, Lcom/parse/ParseACL;

    invoke-direct {v1}, Lcom/parse/ParseACL;-><init>()V

    .line 90
    .local v1, "acl":Lcom/parse/ParseACL;
    invoke-static {p0}, Lcom/parse/Parse;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    return-object v1

    .line 90
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    .local v4, "userId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 97
    .local v3, "permissions":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/parse/Parse;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "accessType":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-direct {v1, v0, v4, v7}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    .end local v0    # "accessType":Ljava/lang/String;
    .end local v3    # "permissions":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "could not decode ACL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getAccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accessType"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 166
    .local v1, "permissions":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 175
    .end local v1    # "permissions":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON failure with ACL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getDefaultACL()Lcom/parse/ParseACL;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 474
    sget-boolean v1, Lcom/parse/ParseACL;->defaultACLUsesCurrentUser:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    if-eqz v1, :cond_3

    .line 476
    sget-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    move-object v0, v1

    .line 477
    .local v0, "last":Lcom/parse/ParseUser;
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-nez v1, :cond_1

    .line 478
    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    .line 489
    .end local v0    # "last":Lcom/parse/ParseUser;
    :goto_1
    return-object v1

    .line 476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    .restart local v0    # "last":Lcom/parse/ParseUser;
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 481
    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    sput-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 482
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    invoke-virtual {v1, v3}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 483
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 484
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 485
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 487
    :cond_2
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    goto :goto_1

    .line 489
    .end local v0    # "last":Lcom/parse/ParseUser;
    :cond_3
    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_1
.end method

.method private prepareUnresolvedUser(Lcom/parse/ParseUser;)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq v0, p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v1, "*unresolved"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    iput-object p1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 282
    new-instance v0, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v0, p0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {p1, v0}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 284
    :cond_0
    return-void
.end method

.method private resolveUser(Lcom/parse/ParseUser;)V
    .locals 5
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq p1, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v2, "*unresolved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v4, "*unresolved"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v2, "*unresolved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setAccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "accessType"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "allowed"    # Z

    .prologue
    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    .local v1, "permissions":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 140
    if-nez p3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "permissions":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .restart local v1    # "permissions":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_2
    if-eqz p3, :cond_3

    .line 150
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1    # "permissions":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON failure with ACL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "permissions":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDefaultACL(Lcom/parse/ParseACL;Z)V
    .locals 2
    .param p0, "acl"    # Lcom/parse/ParseACL;
    .param p1, "withAccessForCurrentUser"    # Z

    .prologue
    const/4 v0, 0x0

    .line 462
    sput-object v0, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 463
    sput-object v0, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 464
    if-eqz p0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    .line 466
    sget-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 467
    sput-boolean p1, Lcom/parse/ParseACL;->defaultACLUsesCurrentUser:Z

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    sput-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_0
.end method

.method private setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 268
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method private setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 273
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 274
    return-void
.end method

.method private static validateRoleState(Lcom/parse/ParseRole;)V
    .locals 2
    .param p0, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 385
    const-string v1, "Roles must be saved to the server before they can be used in an ACL."

    .line 384
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    return-void
.end method


# virtual methods
.method copy()Lcom/parse/ParseACL;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0}, Lcom/parse/ParseACL;-><init>()V

    .line 60
    .local v0, "copy":Lcom/parse/ParseACL;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    iput-object v2, v0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 65
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    new-instance v3, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v3, v0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 68
    :cond_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .prologue
    .line 191
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .prologue
    .line 205
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-ne p1, v0, :cond_0

    .line 293
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseACL;->getAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Lcom/parse/ParseRole;)Z
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 400
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 401
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getRoleReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "role:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Lcom/parse/ParseRole;)Z
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 429
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 430
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getRoleWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "role:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-ne p1, v0, :cond_0

    .line 322
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    .line 327
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseACL;->getAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasUnresolvedUser()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShared()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/parse/ParseACL;->shared:Z

    return v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 184
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 198
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public setReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    return-void
.end method

.method public setRoleReadAccess(Lcom/parse/ParseRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 414
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 415
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setRoleReadAccess(Ljava/lang/String;Z)V

    .line 416
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "role:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 354
    return-void
.end method

.method public setRoleWriteAccess(Lcom/parse/ParseRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 443
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 444
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setRoleWriteAccess(Ljava/lang/String;Z)V

    .line 445
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "role:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 380
    return-void
.end method

.method setShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/parse/ParseACL;->shared:Z

    .line 77
    return-void
.end method

.method public setWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    return-object v0
.end method
