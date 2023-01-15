.class final Lcom/google/android/gcm/server/MulticastResult$Builder;
.super Ljava/lang/Object;
.source "MulticastResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gcm/server/MulticastResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final canonicalIds:I

.field private final failure:I

.field private final multicastId:J

.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gcm/server/Result;",
            ">;"
        }
    .end annotation
.end field

.field private retryMulticastIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final success:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 1
    .param p1, "success"    # I
    .param p2, "failure"    # I
    .param p3, "canonicalIds"    # I
    .param p4, "multicastId"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->results:Ljava/util/List;

    .line 50
    iput p1, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->success:I

    .line 51
    iput p2, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->failure:I

    .line 52
    iput p3, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->canonicalIds:I

    .line 53
    iput-wide p4, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->multicastId:J

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gcm/server/MulticastResult$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->success:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gcm/server/MulticastResult$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->failure:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gcm/server/MulticastResult$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->canonicalIds:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/gcm/server/MulticastResult$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->multicastId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/gcm/server/MulticastResult$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->results:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gcm/server/MulticastResult$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->retryMulticastIds:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addResult(Lcom/google/android/gcm/server/Result;)Lcom/google/android/gcm/server/MulticastResult$Builder;
    .locals 1
    .param p1, "result"    # Lcom/google/android/gcm/server/Result;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-object p0
.end method

.method public build()Lcom/google/android/gcm/server/MulticastResult;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/gcm/server/MulticastResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gcm/server/MulticastResult;-><init>(Lcom/google/android/gcm/server/MulticastResult$Builder;Lcom/google/android/gcm/server/MulticastResult$1;)V

    return-object v0
.end method

.method public retryMulticastIds(Ljava/util/List;)Lcom/google/android/gcm/server/MulticastResult$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gcm/server/MulticastResult$Builder;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "retryMulticastIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/google/android/gcm/server/MulticastResult$Builder;->retryMulticastIds:Ljava/util/List;

    .line 63
    return-object p0
.end method
