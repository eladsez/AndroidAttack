.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$ParseObjectFactory;
    }
.end annotation


# static fields
.field static final API_VERSION:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseObject"

.field static final VERSION_NAME:Ljava/lang/String; = "1.2.2"

.field private static final impreciseDateFormat:Ljava/text/DateFormat;

.field private static final objectFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject$ParseObjectFactory",
            "<*>;>;"
        }
    .end annotation
.end field

.field static server:Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private final dataAvailability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field dirty:Z

.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenFetched:Z

.field private final hashedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/parse/ParseJSONCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private localId:Ljava/lang/String;

.field final mutex:Ljava/lang/Object;

.field private objectId:Ljava/lang/String;

.field protected final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final taskQueue:Lcom/parse/TaskQueue;

.field private updatedAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const-string v1, "https://api.parse.com"

    sput-object v1, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    .line 60
    const-string v1, "_User"

    new-instance v2, Lcom/parse/ParseObject$1;

    invoke-direct {v2}, Lcom/parse/ParseObject$1;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 69
    const-string v1, "_Role"

    new-instance v2, Lcom/parse/ParseObject$2;

    invoke-direct {v2}, Lcom/parse/ParseObject$2;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 78
    const-string v1, "_Installation"

    new-instance v2, Lcom/parse/ParseObject$3;

    invoke-direct {v2}, Lcom/parse/ParseObject$3;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sput-object v0, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "theClassName"    # Ljava/lang/String;
    .param p2, "isPointer"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v0}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v0}, Lcom/parse/ParseObject$ParseObjectFactory;->getExpectedType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must create this type of ParseObject using ParseObject.create()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 131
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    .line 136
    iput-object p1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    .line 137
    if-nez p2, :cond_2

    .line 138
    instance-of v0, p0, Lcom/parse/ParseUser;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/parse/ParseInstallation;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 142
    :cond_1
    iput-boolean v3, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 143
    iput-boolean v3, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_2
    iput-boolean v2, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 146
    iput-boolean v2, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/Task;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/util/List;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/parse/Task;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/List;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/parse/Task;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseObject;ZLjava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseObject;->constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseObject;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Lcom/parse/Task;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->deleteAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/parse/ParseObject;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    return p1
.end method

.method private applyOperations(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1988
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 1989
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1990
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseFieldOperation;

    .line 1991
    .local v4, "operation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1992
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {v4, v3, p0, v1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1993
    .local v2, "newValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1994
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1999
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v4    # "operation":Lcom/parse/ParseFieldOperation;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1996
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "newValue":Ljava/lang/Object;
    .restart local v3    # "oldValue":Ljava/lang/Object;
    .restart local v4    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_0
    :try_start_1
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1999
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v4    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2000
    return-void
.end method

.method private canBeSerialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1592
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1597
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v2}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1598
    monitor-exit v1

    .line 1606
    :goto_0
    return v0

    .line 1601
    :cond_0
    const-string v2, "ACL"

    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1603
    monitor-exit v1

    goto :goto_0

    .line 1607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1606
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static canBeSerializedAsValue(Ljava/lang/Object;)Z
    .locals 14
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1537
    instance-of v11, p0, Lcom/parse/ParseObject;

    if-eqz v11, :cond_2

    move-object v9, p0

    .line 1538
    check-cast v9, Lcom/parse/ParseObject;

    .line 1539
    .local v9, "object":Lcom/parse/ParseObject;
    invoke-virtual {v9}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    move v11, v12

    :goto_0
    move v13, v11

    .line 1585
    .end local v9    # "object":Lcom/parse/ParseObject;
    :cond_0
    :goto_1
    return v13

    .restart local v9    # "object":Lcom/parse/ParseObject;
    :cond_1
    move v11, v13

    .line 1539
    goto :goto_0

    .line 1541
    .end local v9    # "object":Lcom/parse/ParseObject;
    :cond_2
    instance-of v11, p0, Ljava/util/Map;

    if-eqz v11, :cond_4

    move-object v8, p0

    .line 1543
    check-cast v8, Ljava/util/Map;

    .line 1544
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1545
    .local v6, "item":Ljava/lang/Object;
    invoke-static {v6}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 1550
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/Object;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v11, p0, Lorg/json/JSONArray;

    if-eqz v11, :cond_5

    move-object v1, p0

    .line 1551
    check-cast v1, Lorg/json/JSONArray;

    .line 1552
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_8

    .line 1554
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 1552
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1557
    :catch_0
    move-exception v3

    .line 1558
    .local v3, "e":Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unable to find related objects for saving."

    invoke-direct {v11, v12, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1562
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "i":I
    :cond_5
    instance-of v11, p0, Lorg/json/JSONObject;

    if-eqz v11, :cond_7

    move-object v2, p0

    .line 1563
    check-cast v2, Lorg/json/JSONObject;

    .line 1564
    .local v2, "dictionary":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1565
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1567
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1568
    .local v10, "v":Ljava/lang/Object;
    invoke-static {v10}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_6

    goto :goto_1

    .line 1571
    .end local v10    # "v":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 1572
    .restart local v3    # "e":Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unable to find related objects for saving."

    invoke-direct {v11, v12, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1576
    .end local v2    # "dictionary":Lorg/json/JSONObject;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v7    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    instance-of v11, p0, Lcom/parse/ParseACL;

    if-eqz v11, :cond_8

    move-object v0, p0

    .line 1577
    check-cast v0, Lcom/parse/ParseACL;

    .line 1578
    .local v0, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1579
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .end local v0    # "acl":Lcom/parse/ParseACL;
    :cond_8
    move v13, v12

    .line 1585
    goto/16 :goto_1
.end method

.method private checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 707
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 708
    :try_start_0
    invoke-static {p2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseJSONCacheItem;

    .line 710
    .local v2, "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    if-nez v2, :cond_0

    .line 711
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "ParseObject contains container item that isn\'t cached."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    .end local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 714
    .restart local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_0
    const/4 v1, 0x0

    .line 716
    .local v1, "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :try_start_1
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    .end local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    invoke-direct {v1, p2}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    .restart local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/parse/ParseJSONCacheItem;->equals(Lcom/parse/ParseJSONCacheItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 723
    new-instance v3, Lcom/parse/ParseSetOperation;

    invoke-direct {v3, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 729
    .end local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    .end local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_1
    :goto_0
    monitor-exit v4

    .line 730
    return-void

    .line 717
    .restart local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 727
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2625
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject has no data for this key.  Call fetchIfNeeded() to get the data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2629
    :cond_0
    return-void
.end method

.method private checkpointAllMutableContainers()V
    .locals 4

    .prologue
    .line 678
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 680
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    goto :goto_0

    .line 682
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    return-void
.end method

.method private checkpointMutableContainer(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 689
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 690
    :try_start_0
    invoke-static {p1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    const/4 v1, 0x0

    .line 693
    .local v1, "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :try_start_1
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    .end local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    invoke-direct {v1, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    .restart local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .end local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_0
    monitor-exit v3

    .line 700
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 699
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p1, "dirtyChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseFile;>;"
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 1525
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 22
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p1, "dirtyChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseFile;>;"
    .local p3, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local p4, "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/List;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v14, p0

    .line 1436
    check-cast v14, Ljava/util/List;

    .line 1437
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1438
    .local v12, "item":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v12, v0, v1, v2, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    goto :goto_0

    .line 1441
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/lang/Object;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v15, p0

    .line 1442
    check-cast v15, Ljava/util/Map;

    .line 1443
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 1444
    .local v19, "value":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    goto :goto_1

    .line 1447
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v19    # "value":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v6, p0

    .line 1448
    check-cast v6, Lorg/json/JSONArray;

    .line 1449
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 1451
    :try_start_0
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1452
    :catch_0
    move-exception v8

    .line 1453
    .local v8, "e":Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Invalid JSONArray on object."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1457
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v7, p0

    .line 1458
    check-cast v7, Lorg/json/JSONObject;

    .line 1459
    .local v7, "dictionary":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 1460
    .local v13, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1462
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 1463
    .restart local v19    # "value":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1464
    .end local v19    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v8

    .line 1465
    .restart local v8    # "e":Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Invalid JSONDictionary on object."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1469
    .end local v7    # "dictionary":Lorg/json/JSONObject;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseACL;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v5, p0

    .line 1470
    check-cast v5, Lcom/parse/ParseACL;

    .line 1471
    .local v5, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v5}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1472
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 1514
    .end local v5    # "acl":Lcom/parse/ParseACL;
    :cond_4
    :goto_4
    return-void

    .line 1475
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseObject;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v16, p0

    .line 1476
    check-cast v16, Lcom/parse/ParseObject;

    .line 1480
    .local v16, "object":Lcom/parse/ParseObject;
    invoke-virtual/range {v16 .. v16}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 1481
    new-instance p4, Ljava/util/IdentityHashMap;

    .end local p4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    invoke-direct/range {p4 .. p4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1493
    .restart local p4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1496
    new-instance v17, Ljava/util/IdentityHashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 1497
    .end local p3    # "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local v17, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 1504
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1505
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 p3, v17

    .line 1508
    .end local v17    # "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .restart local p3    # "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    goto :goto_4

    .line 1483
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1484
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Found a circular dependency while saving."

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1486
    :cond_8
    new-instance v18, Ljava/util/IdentityHashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 1487
    .end local p4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local v18, "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p4, v18

    .end local v18    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .restart local p4    # "seenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    goto :goto_5

    .line 1508
    .end local v16    # "object":Lcom/parse/ParseObject;
    :cond_9
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseFile;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v9, p0

    .line 1509
    check-cast v9, Lcom/parse/ParseFile;

    .line 1510
    .local v9, "file":Lcom/parse/ParseFile;
    invoke-virtual {v9}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4

    .line 1511
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;
    .locals 6
    .param p1, "requireObjectId"    # Z
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1333
    :try_start_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v3, "delete"

    invoke-direct {v0, v3, p2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1335
    const-string v3, "classname"

    iget-object v5, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "objectId"

    iget-object v5, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    :try_start_2
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1343
    monitor-exit v4

    return-object v0

    .line 1339
    :catch_0
    move-exception v2

    .line 1340
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1344
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 173
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v0, v1}, Lcom/parse/ParseObject$ParseObjectFactory;->getNew(Z)Lcom/parse/ParseObject;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 193
    sget-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v1, v2}, Lcom/parse/ParseObject$ParseObjectFactory;->getNew(Z)Lcom/parse/ParseObject;

    move-result-object v0

    .line 198
    .local v0, "result":Lcom/parse/ParseObject;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/parse/ParseObject;->setObjectId(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseObject;->dirty:Z

    .line 200
    return-object v0

    .line 196
    .end local v0    # "result":Lcom/parse/ParseObject;
    :cond_0
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .restart local v0    # "result":Lcom/parse/ParseObject;
    goto :goto_0
.end method

.method private currentOperations()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1979
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1980
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 1981
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/Task;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    .local v4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseFile;>;"
    invoke-static {p0, v4, v2}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v1, "fileSaveTasks":Ljava/util/List;, "Ljava/util/List<Lcom/parse/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile;

    .line 1622
    .local v0, "file":Lcom/parse/ParseFile;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/parse/ParseFile;->saveAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1625
    .end local v0    # "file":Lcom/parse/ParseFile;
    :cond_0
    invoke-static {v1}, Lcom/parse/Task;->whenAll(Ljava/util/Collection;)Lcom/parse/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$21;

    invoke-direct {v6, v4, p1}, Lcom/parse/ParseObject$21;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v5

    return-object v5
.end method

.method private deleteAsync()Lcom/parse/Task;
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
    .line 1380
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$20;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$20;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private deleteAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseObject$19;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$19;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$18;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$18;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$17;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$17;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method static declared-synchronized deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 346
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 347
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit v2

    return-void

    .line 346
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static enqueueForAll(Ljava/util/List;Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/parse/Task",
            "<TT;>;>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p1, "taskStart":Lcom/parse/Continuation;, "Lcom/parse/Continuation<Ljava/lang/Void;Lcom/parse/Task<TT;>;>;"
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v7

    .line 225
    .local v7, "readyToStart":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v5, "locks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/locks/Lock;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 227
    .local v6, "obj":Lcom/parse/ParseObject;
    iget-object v8, v6, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    invoke-virtual {v8}, Lcom/parse/TaskQueue;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v6    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v4, Lcom/parse/LockSet;

    invoke-direct {v4, v5}, Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v4, "lock":Lcom/parse/LockSet;
    invoke-virtual {v4}, Lcom/parse/LockSet;->lock()V

    .line 238
    :try_start_0
    invoke-virtual {v7}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/parse/Continuation;->then(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/Task;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .local v2, "fullTask":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "childTasks":Ljava/util/List;, "Ljava/util/List<Lcom/parse/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 248
    .restart local v6    # "obj":Lcom/parse/ParseObject;
    iget-object v8, v6, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v9, Lcom/parse/ParseObject$4;

    invoke-direct {v9, v0, v2}, Lcom/parse/ParseObject$4;-><init>(Ljava/util/List;Lcom/parse/Task;)V

    invoke-virtual {v8, v9}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    .end local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lcom/parse/Task<Ljava/lang/Void;>;>;"
    .end local v2    # "fullTask":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    .end local v6    # "obj":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lcom/parse/LockSet;->unlock()V

    throw v8

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 241
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lcom/parse/Task<Ljava/lang/Void;>;>;"
    .restart local v2    # "fullTask":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :cond_1
    invoke-static {v0}, Lcom/parse/Task;->whenAll(Ljava/util/Collection;)Lcom/parse/Task;

    move-result-object v8

    new-instance v9, Lcom/parse/ParseObject$5;

    invoke-direct {v9, v7}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v8, v9}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    invoke-virtual {v4}, Lcom/parse/LockSet;->unlock()V

    return-object v2
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1909
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1892
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$27;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$27;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1848
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1849
    invoke-static {p0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v5

    .line 1867
    :goto_0
    return-object v5

    .line 1852
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    invoke-virtual {v5}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1854
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1855
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    invoke-virtual {v5}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1856
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "All objects should have the same class"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1858
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    invoke-virtual {v5}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 1859
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1860
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "All objects must exist on the server"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1863
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    invoke-virtual {v5}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1865
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/parse/ParseQuery;

    invoke-direct {v4, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v4, "query":Lcom/parse/ParseQuery;
    const-string v5, "objectId"

    invoke-virtual {v4, v5, v3}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 1867
    new-instance v5, Lcom/parse/ParseObject$26;

    invoke-direct {v5, v4}, Lcom/parse/ParseObject$26;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {p1, v5}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$25;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$25;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v5

    goto :goto_0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1830
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllIfNeededAsync(Ljava/util/List;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1813
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$24;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$24;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private static fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1763
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1765
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 1766
    .local v4, "object":Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1767
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1768
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All objects should have the same class"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1770
    :cond_1
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1771
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 1772
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1773
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1778
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "object":Lcom/parse/ParseObject;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 1779
    invoke-static {p0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v6

    .line 1784
    :goto_1
    return-object v6

    .line 1782
    :cond_3
    new-instance v5, Lcom/parse/ParseQuery;

    invoke-direct {v5, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v5, "query":Lcom/parse/ParseQuery;
    const-string v6, "objectId"

    invoke-virtual {v5, v6, v3}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 1784
    new-instance v6, Lcom/parse/ParseObject$23;

    invoke-direct {v6, v5}, Lcom/parse/ParseObject$23;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {p1, v6}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseObject$22;

    invoke-direct {v7, p0}, Lcom/parse/ParseObject$22;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v6

    goto :goto_1
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/FindCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/FindCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1843
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1844
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/FindCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/FindCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1921
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1922
    return-void
.end method

.method private static findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .param p0, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "unsaved":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 801
    check-cast v2, Ljava/util/List;

    .line 802
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 803
    .local v0, "elem":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    .line 805
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_1

    move-object v3, p0

    .line 807
    check-cast v3, Ljava/util/Map;

    .line 808
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 809
    .restart local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 811
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v5, p0, Lcom/parse/ParseObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 812
    check-cast v4, Lcom/parse/ParseObject;

    .line 813
    .local v4, "object":Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 814
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v4    # "object":Lcom/parse/ParseObject;
    :cond_2
    return-void
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 6
    .param p1, "mayCopy"    # Z

    .prologue
    .line 2519
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 2520
    :try_start_0
    const-string v3, "ACL"

    invoke-direct {p0, v3}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2521
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2522
    .local v1, "acl":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 2523
    const/4 v2, 0x0

    monitor-exit v4

    .line 2534
    .end local v1    # "acl":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 2525
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lcom/parse/ParseACL;

    if-nez v3, :cond_1

    .line 2526
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "only ACLs can be stored in the ACL key"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2535
    .end local v1    # "acl":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2528
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2529
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 2530
    .local v2, "copy":Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    invoke-virtual {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 2532
    monitor-exit v4

    goto :goto_0

    .line 2534
    .end local v2    # "copy":Lcom/parse/ParseACL;
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_0
.end method

.method static getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 209
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 285
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 286
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParseObject;->getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 285
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 295
    const-class v7, Lcom/parse/ParseObject;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 316
    :goto_0
    monitor-exit v7

    return-object v5

    .line 302
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v2, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v2, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v0, v6, [B

    .line 304
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 305
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 306
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .local v3, "fileContent":Ljava/lang/String;
    :try_start_2
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .local v4, "tokener":Lorg/json/JSONTokener;
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 307
    .end local v0    # "bytes":[B
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .end local v3    # "fileContent":Ljava/lang/String;
    .end local v4    # "tokener":Lorg/json/JSONTokener;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 315
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "fileContent":Ljava/lang/String;
    .restart local v4    # "tokener":Lorg/json/JSONTokener;
    :catch_1
    move-exception v1

    .line 316
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0

    .line 295
    .end local v0    # "bytes":[B
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .end local v3    # "fileContent":Ljava/lang/String;
    .end local v4    # "tokener":Lorg/json/JSONTokener;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    .local v1, "object":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 400
    :goto_0
    return-object v2

    .line 396
    :cond_0
    :try_start_0
    const-string v4, "classname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    .line 397
    .local v2, "parseObject":Lcom/parse/ParseObject;
    invoke-virtual {v2, v1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v2    # "parseObject":Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v2, v3

    .line 400
    goto :goto_0
.end method

.method private hasDirtyChildren()Z
    .locals 3

    .prologue
    .line 653
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 657
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v0, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 659
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 660
    .end local v0    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 272
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 276
    :goto_0
    monitor-exit v2

    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/text/ParseException;
    :try_start_1
    const-string v1, "com.parse.ParseObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v1, 0x0

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isDataAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2558
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2559
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isDirty(Z)Z
    .locals 2
    .param p1, "considerChildren"    # Z

    .prologue
    .line 668
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 670
    iget-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private mergeAfterSave(Lorg/json/JSONObject;ZLjava/util/Map;)V
    .locals 9
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "justCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p3, "operationsBeforeSave":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 506
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v8, p3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 508
    .local v3, "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 509
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 510
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 512
    .local v2, "nextOperation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    if-nez p1, :cond_1

    .line 514
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseFieldOperation;

    .line 516
    .local v4, "operation1":Lcom/parse/ParseFieldOperation;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseFieldOperation;

    .line 517
    .local v5, "operation2":Lcom/parse/ParseFieldOperation;
    if-eqz v5, :cond_0

    .line 518
    invoke-interface {v5, v4}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v5

    .line 522
    :goto_1
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 533
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "nextOperation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    .end local v3    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    .end local v4    # "operation1":Lcom/parse/ParseFieldOperation;
    .end local v5    # "operation2":Lcom/parse/ParseFieldOperation;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 520
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "nextOperation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    .restart local v3    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    .restart local v4    # "operation1":Lcom/parse/ParseFieldOperation;
    .restart local v5    # "operation2":Lcom/parse/ParseFieldOperation;
    :cond_0
    move-object v5, v4

    goto :goto_1

    .line 528
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "operation1":Lcom/parse/ParseFieldOperation;
    .end local v5    # "operation2":Lcom/parse/ParseFieldOperation;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-direct {p0, p3, v6}, Lcom/parse/ParseObject;->applyOperations(Ljava/util/Map;Ljava/util/Map;)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V

    .line 530
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 531
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 533
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 5

    .prologue
    .line 2006
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2007
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2008
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v4, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2009
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2010
    .local v1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->applyOperations(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 2012
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2013
    return-void
.end method

.method private static registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject$ParseObjectFactory",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "factory":Lcom/parse/ParseObject$ParseObjectFactory;, "Lcom/parse/ParseObject$ParseObjectFactory<*>;"
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1758
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 1759
    return-void
.end method

.method private static saveAllAsync(Ljava/util/List;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1745
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1945
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V

    .line 1946
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1934
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1935
    return-void
.end method

.method static declared-synchronized saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 325
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 326
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p2}, Lcom/parse/ParseObject;->saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit v2

    return-void

    .line 325
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 335
    const-class v3, Lcom/parse/ParseObject;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 336
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 337
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v3

    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 340
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setObjectIdInternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 789
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 792
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 795
    :cond_0
    monitor-exit v1

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2102
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2114
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 2115
    .local v0, "operation":Lcom/parse/ParseAddOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2116
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2142
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    .line 2143
    .local v0, "operation":Lcom/parse/ParseAddUniqueOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2144
    return-void
.end method

.method addToHashedObjects(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 369
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v3, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v3, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :try_start_1
    monitor-exit v2

    .line 376
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Couldn\'t serialize container value to JSON."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2128
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2129
    return-void
.end method

.method checkForChangesToMutableContainers()V
    .locals 5

    .prologue
    .line 737
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 738
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 742
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 741
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 742
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    return-void
.end method

.method constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 7
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseCommand;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 825
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 828
    .local v2, "objectJSON":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v3, "create"

    .line 829
    .local v3, "op":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/parse/ParseCommand;

    invoke-direct {v0, v3, p2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 832
    const-string v4, "classname"

    iget-object v6, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    :try_start_1
    const-string v4, "data"

    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    :try_start_2
    monitor-exit v5

    return-object v0

    .line 828
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v3    # "op":Ljava/lang/String;
    :cond_0
    const-string v3, "update"

    goto :goto_0

    .line 836
    .restart local v0    # "command":Lcom/parse/ParseCommand;
    .restart local v3    # "op":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "could not decode data"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 841
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "objectJSON":Lorg/json/JSONObject;
    .end local v3    # "op":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2170
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2171
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 5
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 454
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    :try_start_0
    iget-object v3, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 456
    .local v2, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 459
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/parse/ParseObject;->deleteAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 1395
    return-void
.end method

.method public final deleteEventually()V
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->deleteEventually(Lcom/parse/DeleteCallback;)V

    .line 1164
    return-void
.end method

.method public final deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 1183
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1184
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1186
    .local v0, "cache":Lcom/parse/ParseCommandCache;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/parse/ParseObject;->constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/parse/ParseCommandCache;->runEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)Lcom/parse/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/Task;->makeVoid()Lcom/parse/Task;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    move-result-object v2

    new-instance v4, Lcom/parse/ParseObject$12;

    invoke-direct {v4, p0, v0}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCommandCache;)V

    invoke-virtual {v2, v4}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 1196
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    :try_start_2
    monitor-exit v3

    .line 1201
    return-void

    .line 1197
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot deleteEventually this object."

    invoke-direct {v2, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1200
    .end local v0    # "cache":Lcom/parse/ParseCommandCache;
    .end local v1    # "e":Lcom/parse/ParseException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final deleteInBackground()V
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    .line 1414
    return-void
.end method

.method public final deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/parse/ParseObject;->deleteAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1406
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method final fetchAsync()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$16;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$16;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseObject$15;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$15;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$14;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$13;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method final fetchIfNeededAsync()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1299
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-static {p0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    .line 1302
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchAsync()Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/GetCallback;

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1328
    return-void
.end method

.method public final fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/GetCallback;

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1292
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2596
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 2597
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2598
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2599
    const/4 v3, 0x0

    monitor-exit v5

    .line 2620
    :goto_0
    return-object v3

    .line 2602
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2604
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/parse/ParseACL;

    if-eqz v4, :cond_1

    const-string v4, "ACL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2605
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    .line 2606
    .local v1, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->isShared()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2607
    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 2608
    .local v2, "copy":Lcom/parse/ParseACL;
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v6, "ACL"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    invoke-virtual {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 2610
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/Object;
    monitor-exit v5

    goto :goto_0

    .line 2621
    .end local v1    # "acl":Lcom/parse/ParseACL;
    .end local v2    # "copy":Lcom/parse/ParseACL;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2616
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v4, v3, Lcom/parse/ParseRelation;

    if-eqz v4, :cond_2

    .line 2617
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v4, v0

    invoke-virtual {v4, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 2620
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 2515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2405
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2406
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2407
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2408
    monitor-exit v2

    .line 2414
    :goto_0
    return v1

    .line 2410
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2411
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 2412
    monitor-exit v2

    goto :goto_0

    .line 2415
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2414
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2204
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2206
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2207
    monitor-exit v2

    move-object v0, v1

    .line 2214
    :goto_0
    return-object v0

    .line 2209
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2210
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, [B

    if-nez v3, :cond_1

    .line 2211
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2214
    :cond_1
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [B

    monitor-exit v2

    goto :goto_0

    .line 2215
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 2

    .prologue
    .line 444
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2426
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2427
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2428
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2429
    monitor-exit v2

    move-object v0, v1

    .line 2435
    :goto_0
    return-object v0

    .line 2431
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2432
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Date;

    if-nez v3, :cond_1

    .line 2433
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2435
    :cond_1
    check-cast v0, Ljava/util/Date;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2436
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2375
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 2376
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 2377
    const-wide/16 v1, 0x0

    .line 2379
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2360
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 2361
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 2362
    const/4 v1, 0x0

    .line 2364
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2247
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 2248
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2249
    iget-object v5, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2250
    monitor-exit v4

    move-object v2, v3

    .line 2264
    :goto_0
    return-object v2

    .line 2252
    :cond_0
    iget-object v5, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2254
    .local v2, "value":Ljava/lang/Object;
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 2256
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 2257
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/parse/Parse;->encodeAsJSONArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object v2

    .line 2258
    .local v2, "value":Lorg/json/JSONArray;
    invoke-virtual {p0, p1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2261
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "value":Lorg/json/JSONArray;
    :cond_1
    instance-of v5, v2, Lorg/json/JSONArray;

    if-nez v5, :cond_2

    .line 2262
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 2264
    :cond_2
    check-cast v2, Lorg/json/JSONArray;

    monitor-exit v4

    goto :goto_0

    .line 2265
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2332
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2333
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2334
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2335
    monitor-exit v2

    move-object v0, v1

    .line 2348
    :goto_0
    return-object v0

    .line 2337
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2339
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 2340
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2341
    .local v0, "value":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2344
    .end local v0    # "value":Lorg/json/JSONObject;
    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    .line 2345
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2348
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    monitor-exit v2

    goto :goto_0

    .line 2349
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2276
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 2277
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2278
    monitor-exit v4

    .line 2292
    :goto_0
    return-object v1

    .line 2280
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2282
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 2283
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 2284
    .local v2, "value":Ljava/util/List;
    invoke-virtual {p0, p1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2287
    .end local v2    # "value":Ljava/util/List;
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_2

    .line 2288
    monitor-exit v4

    goto :goto_0

    .line 2293
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2291
    :cond_2
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 2292
    .local v1, "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2390
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 2391
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 2392
    const-wide/16 v1, 0x0

    .line 2394
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2304
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 2305
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2306
    monitor-exit v4

    .line 2320
    :goto_0
    return-object v1

    .line 2308
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2310
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 2311
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 2312
    .local v2, "value":Ljava/util/Map;
    invoke-virtual {p0, p1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2315
    .end local v2    # "value":Ljava/util/Map;
    :cond_1
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_2

    .line 2316
    monitor-exit v4

    goto :goto_0

    .line 2321
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2319
    :cond_2
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 2320
    .local v1, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2226
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2227
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2228
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2229
    monitor-exit v2

    move-object v0, v1

    .line 2235
    :goto_0
    return-object v0

    .line 2231
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2232
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Number;

    if-nez v3, :cond_1

    .line 2233
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2235
    :cond_1
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2236
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 753
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getOrCreateLocalId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 763
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 769
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2483
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2484
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 2485
    const/4 v0, 0x0

    .line 2487
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseFile;

    goto :goto_0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2498
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2499
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2500
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2501
    monitor-exit v2

    move-object v0, v1

    .line 2507
    :goto_0
    return-object v0

    .line 2503
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2504
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Lcom/parse/ParseGeoPoint;

    if-nez v3, :cond_1

    .line 2505
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2507
    :cond_1
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2508
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2449
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2450
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 2451
    const/4 v0, 0x0

    .line 2453
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2466
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2467
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 2468
    const/4 v0, 0x0

    .line 2470
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2573
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2576
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelation;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 2577
    .local v0, "relation":Lcom/parse/ParseRelation;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2578
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_0

    .line 2579
    check-cast v1, Lcom/parse/ParseRelation;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/ParseRelation;->setTargetClass(Ljava/lang/String;)V

    .line 2581
    :cond_0
    monitor-exit v3

    return-object v0

    .line 2582
    .end local v0    # "relation":Lcom/parse/ParseRelation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2183
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2185
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2186
    monitor-exit v2

    move-object v0, v1

    .line 2192
    :goto_0
    return-object v0

    .line 2188
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2189
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2190
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2192
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2193
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleFetchResult(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1205
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;)V

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 1207
    monitor-exit v1

    .line 1208
    return-void

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p3, "operationsBeforeSave":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 953
    :try_start_0
    const-string v1, "create"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "user_signup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 954
    .local v0, "justCreated":Z
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/parse/ParseObject;->mergeAfterSave(Lorg/json/JSONObject;ZLjava/util/Map;)V

    .line 955
    iget-object v1, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/parse/ParseMulticastDelegate;->invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 956
    monitor-exit v2

    .line 957
    return-void

    .line 953
    .end local v0    # "justCreated":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1972
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 2632
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2633
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2636
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2076
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2077
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 2088
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 2089
    .local v0, "operation":Lcom/parse/ParseIncrementOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2090
    return-void
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 2552
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2553
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    monitor-exit v1

    return v0

    .line 2554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected mergeAfterFetch(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 494
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V

    .line 496
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 497
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 498
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p1, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 465
    iget-object v0, p1, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 466
    iget-object v0, p1, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 467
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 468
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    iget-object v2, p1, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 471
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to mergeFromObject during a save."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 474
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 475
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 478
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 479
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    return-void
.end method

.method mergeFromServer(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 538
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v15

    .line 539
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 545
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 548
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 551
    :cond_0
    const-string v14, "created_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 552
    const-string v14, "created_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "createdAtString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 554
    invoke-static {v3}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 557
    .end local v3    # "createdAtString":Ljava/lang/String;
    :cond_1
    const-string v14, "updated_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 558
    const-string v14, "updated_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 559
    .local v12, "updatedAtString":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 560
    invoke-static {v12}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 563
    .end local v12    # "updatedAtString":Ljava/lang/String;
    :cond_2
    const-string v14, "pointers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 564
    const-string v14, "pointers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 565
    .local v10, "newPointers":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 566
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 567
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 568
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 569
    .local v11, "pointerArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 645
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "newPointers":Lorg/json/JSONObject;
    .end local v11    # "pointerArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 646
    .local v5, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 649
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 576
    :cond_3
    :try_start_3
    const-string v14, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 577
    const-string v14, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 578
    .local v9, "newData":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 579
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 580
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 581
    .restart local v7    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v14, "objectId"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 584
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 587
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_1

    .line 590
    :cond_5
    const-string v14, "createdAt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 591
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    goto :goto_1

    .line 594
    :cond_6
    const-string v14, "updatedAt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 595
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_1

    .line 598
    :cond_7
    const-string v14, "ACL"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 599
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-static {v14}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL;

    move-result-object v1

    .line 600
    .local v1, "acl":Lcom/parse/ParseACL;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const-string v16, "ACL"

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_1

    .line 604
    .end local v1    # "acl":Lcom/parse/ParseACL;
    :cond_8
    const-string v14, "__type"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "className"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 608
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 609
    .local v13, "value":Ljava/lang/Object;
    invoke-static {v13}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 611
    .local v4, "decodedObject":Ljava/lang/Object;
    if-eqz v4, :cond_b

    .line 613
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 614
    instance-of v14, v4, Lorg/json/JSONArray;

    if-eqz v14, :cond_9

    .line 615
    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "decodedObject":Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 617
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 619
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v14, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 621
    .restart local v4    # "decodedObject":Ljava/lang/Object;
    :cond_b
    invoke-static {v13}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 622
    instance-of v14, v13, Lorg/json/JSONArray;

    if-eqz v14, :cond_c

    .line 623
    check-cast v13, Lorg/json/JSONArray;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-static {v13}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 625
    :cond_c
    instance-of v14, v13, Lorg/json/JSONObject;

    if-eqz v14, :cond_d

    .line 626
    move-object v0, v13

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 627
    .local v6, "json":Lorg/json/JSONObject;
    const-string v14, "__type"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "__type"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v16, "Relation"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 628
    const-string v14, "className"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "className":Ljava/lang/String;
    new-instance v13, Lcom/parse/ParseRelation;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 630
    .local v13, "value":Lcom/parse/ParseRelation;
    move-object v0, v13

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v14, v0

    invoke-virtual {v14, v2}, Lcom/parse/ParseRelation;->setTargetClass(Ljava/lang/String;)V

    .line 633
    .end local v2    # "className":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v13    # "value":Lcom/parse/ParseRelation;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 635
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v14, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 640
    .end local v4    # "decodedObject":Ljava/lang/Object;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "newData":Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v14, :cond_10

    .line 641
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 644
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 649
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 650
    return-void
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 2020
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 2021
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2022
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {p2, v3, p0, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2023
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2024
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 2030
    .local v2, "oldOperation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 2031
    .local v0, "newOperation":Lcom/parse/ParseFieldOperation;
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    .line 2034
    iget-object v4, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    monitor-exit v5

    .line 2036
    return-void

    .line 2026
    .end local v0    # "newOperation":Lcom/parse/ParseFieldOperation;
    .end local v2    # "oldOperation":Lcom/parse/ParseFieldOperation;
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2035
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2049
    if-nez p1, :cond_0

    .line 2050
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2053
    :cond_0
    if-nez p2, :cond_1

    .line 2054
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2057
    :cond_1
    instance-of v0, p2, Lcom/parse/ParseFile;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be saved before being set on a ParseObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2062
    :cond_2
    invoke-static {p2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_3
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2067
    return-void
.end method

.method public final refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 1219
    return-void
.end method

.method public final refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/RefreshCallback;

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1230
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parse/GetCallback;

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2641
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback;)V

    .line 2642
    monitor-exit v1

    .line 2643
    return-void

    .line 2642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1955
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1956
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1958
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1959
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1961
    :cond_0
    monitor-exit v2

    .line 1962
    return-void

    .line 1961
    .end local v0    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2158
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 2159
    .local v0, "operation":Lcom/parse/ParseRemoveOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2160
    return-void
.end method

.method revert()V
    .locals 2

    .prologue
    .line 487
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 489
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 490
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 980
    return-void
.end method

.method final saveAsync()Lcom/parse/Task;
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
    .line 1034
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 983
    new-instance v0, Lcom/parse/Capture;

    invoke-direct {v0}, Lcom/parse/Capture;-><init>()V

    .line 985
    .local v0, "operations":Lcom/parse/Capture;, "Lcom/parse/Capture<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 986
    invoke-static {v3}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v2

    .line 989
    :goto_0
    return-object v2

    .line 988
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "sessionToken":Ljava/lang/String;
    invoke-static {v3}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$8;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;Lcom/parse/Capture;)V

    invoke-virtual {v2, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$7;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Lcom/parse/Capture;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    goto :goto_0
.end method

.method public final saveEventually()V
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->saveEventually(Lcom/parse/SaveCallback;)V

    .line 1074
    return-void
.end method

.method public saveEventually(Lcom/parse/SaveCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1092
    iget-object v10, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v10

    .line 1098
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v8, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v9, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v9, v8}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 1101
    const/4 v4, 0x0

    .line 1102
    .local v4, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v4

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Ljava/util/Map;

    move-result-object v6

    .line 1107
    .local v6, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1109
    .local v0, "cache":Lcom/parse/ParseCommandCache;
    :try_start_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/parse/ParseObject;->constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v1

    .line 1112
    .local v1, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v1, v4}, Lcom/parse/ParseCommand;->setLocalId(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->retainLocalIds()V

    .line 1117
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 1118
    .local v5, "object":Lcom/parse/ParseObject;
    invoke-virtual {v5}, Lcom/parse/ParseObject;->saveEventually()V
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1143
    .end local v1    # "command":Lcom/parse/ParseCommand;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v2

    .line 1144
    .local v2, "exception":Lcom/parse/ParseException;
    :try_start_2
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v11, "Unable to saveEventually."

    invoke-direct {v9, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1146
    .end local v0    # "cache":Lcom/parse/ParseCommandCache;
    .end local v2    # "exception":Lcom/parse/ParseException;
    .end local v4    # "localId":Ljava/lang/String;
    .end local v6    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    .end local v8    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1121
    .restart local v0    # "cache":Lcom/parse/ParseCommandCache;
    .restart local v1    # "command":Lcom/parse/ParseCommand;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "localId":Ljava/lang/String;
    .restart local v6    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    .restart local v8    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_1
    :try_start_3
    new-instance v7, Lcom/parse/Capture;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/parse/Capture;-><init>(Ljava/lang/Object;)V

    .line 1123
    .local v7, "succeeded":Lcom/parse/Capture;, "Lcom/parse/Capture<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommandCache;->runEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)Lcom/parse/Task;

    move-result-object v9

    new-instance v11, Lcom/parse/ParseObject$11;

    invoke-direct {v11, p0, v1, v6, v7}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCommand;Ljava/util/Map;Lcom/parse/Capture;)V

    invoke-virtual {v9, v11}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    move-result-object v9

    new-instance v11, Lcom/parse/ParseObject$10;

    invoke-direct {v11, p0, v7, v0}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;Lcom/parse/Capture;Lcom/parse/ParseCommandCache;)V

    invoke-virtual {v9, v11}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 1142
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->releaseLocalIds()V
    :try_end_3
    .catch Lcom/parse/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1146
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1147
    return-void
.end method

.method public final saveInBackground()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 1058
    return-void
.end method

.method public final saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 1050
    return-void
.end method

.method saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->toJSONObjectForDataFile()Lorg/json/JSONObject;

    move-result-object v0

    .line 364
    .local v0, "object":Lorg/json/JSONObject;
    invoke-static {p1, p2, v0}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 365
    monitor-exit v2

    .line 366
    return-void

    .line 365
    .end local v0    # "object":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/parse/ParseACL;

    .prologue
    .line 2542
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2543
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 2
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 783
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 784
    monitor-exit v1

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSave()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 961
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v0

    .line 962
    .local v0, "currentOperations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 963
    monitor-exit v2

    return-object v0

    .line 964
    .end local v0    # "currentOperations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toJSONObjectForDataFile()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 860
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 861
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 864
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 865
    .local v5, "objectJSON":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    .local v0, "dataJSON":Lorg/json/JSONObject;
    :try_start_1
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 870
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 873
    .local v4, "object":Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 874
    iget-object v6, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseJSONCacheItem;

    invoke-virtual {v6}, Lcom/parse/ParseJSONCacheItem;->getJSONObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 892
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "could not serialize object to JSON"

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 897
    .end local v0    # "dataJSON":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 876
    .restart local v0    # "dataJSON":Lorg/json/JSONObject;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "objectJSON":Lorg/json/JSONObject;
    :cond_0
    const/4 v6, 0x1

    :try_start_3
    invoke-static {v4, v6}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 880
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 881
    const-string v6, "createdAt"

    iget-object v8, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v8}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    :cond_2
    iget-object v6, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 884
    const-string v6, "updatedAt"

    iget-object v8, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v8}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 886
    :cond_3
    iget-object v6, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 887
    const-string v6, "objectId"

    iget-object v8, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    :cond_4
    const-string v6, "data"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string v6, "classname"

    iget-object v8, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 896
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v5
.end method

.method toJSONObjectForSaving(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v9, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v9

    .line 915
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 916
    .local v6, "objectJSON":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .local v0, "dataJSON":Lorg/json/JSONObject;
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 921
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseFieldOperation;

    .line 923
    .local v7, "operation":Lcom/parse/ParseFieldOperation;
    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 924
    .local v2, "encoded":Ljava/lang/Object;
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    instance-of v8, v7, Lcom/parse/ParseSetOperation;

    if-eqz v8, :cond_0

    .line 927
    check-cast v7, Lcom/parse/ParseSetOperation;

    .end local v7    # "operation":Lcom/parse/ParseFieldOperation;
    invoke-virtual {v7}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 928
    .local v5, "object":Ljava/lang/Object;
    invoke-static {v5}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 930
    iget-object v8, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v10, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v10, v5}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 942
    .end local v2    # "encoded":Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v10, "could not serialize object to JSON"

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 947
    .end local v0    # "dataJSON":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 936
    .restart local v0    # "dataJSON":Lorg/json/JSONObject;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "objectJSON":Lorg/json/JSONObject;
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 937
    const-string v8, "objectId"

    iget-object v10, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    :cond_2
    const-string v8, "data"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    const-string v8, "classname"

    iget-object v10, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v6, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 946
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v6
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parse/GetCallback;

    .prologue
    .line 2646
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2647
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback;)V

    .line 2648
    monitor-exit v1

    .line 2649
    return-void

    .line 2648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 1349
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method
