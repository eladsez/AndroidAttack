.class public final Lcom/google/android/gcm/server/Message$Builder;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gcm/server/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private collapseKey:Ljava/lang/String;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delayWhileIdle:Ljava/lang/Boolean;

.field private timeToLive:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->data:Ljava/util/Map;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gcm/server/Message$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Message$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->collapseKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gcm/server/Message$Builder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Message$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->delayWhileIdle:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gcm/server/Message$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Message$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->data:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gcm/server/Message$Builder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/Message$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->timeToLive:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gcm/server/Message$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object p0
.end method

.method public build()Lcom/google/android/gcm/server/Message;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/gcm/server/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gcm/server/Message;-><init>(Lcom/google/android/gcm/server/Message$Builder;Lcom/google/android/gcm/server/Message$1;)V

    return-object v0
.end method

.method public collapseKey(Ljava/lang/String;)Lcom/google/android/gcm/server/Message$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/gcm/server/Message$Builder;->collapseKey:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public delayWhileIdle(Z)Lcom/google/android/gcm/server/Message$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->delayWhileIdle:Ljava/lang/Boolean;

    .line 88
    return-object p0
.end method

.method public timeToLive(I)Lcom/google/android/gcm/server/Message$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Message$Builder;->timeToLive:Ljava/lang/Integer;

    .line 96
    return-object p0
.end method
