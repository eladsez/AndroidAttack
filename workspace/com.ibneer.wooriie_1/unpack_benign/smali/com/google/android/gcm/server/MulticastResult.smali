.class public final Lcom/google/android/gcm/server/MulticastResult;
.super Ljava/lang/Object;
.source "MulticastResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gcm/server/MulticastResult$1;,
        Lcom/google/android/gcm/server/MulticastResult$Builder;
    }
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

.field private final retryMulticastIds:Ljava/util/List;
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
.method private constructor <init>(Lcom/google/android/gcm/server/MulticastResult$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/android/gcm/server/MulticastResult$Builder;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/google/android/gcm/server/MulticastResult$Builder;->access$100(Lcom/google/android/gcm/server/MulticastResult$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gcm/server/MulticastResult;->success:I

    .line 73
    invoke-static {p1}, Lcom/google/android/gcm/server/MulticastResult$Builder;->access$200(Lcom/google/android/gcm/server/MulticastResult$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gcm/server/MulticastResult;->failure:I

    .line 74
    invoke-static {p1}, Lcom/google/android/gcm/server/MulticastResult$Builder;->access$300(Lcom/google/android/gcm/server/MulticastResult$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gcm/server/MulticastResult;->canonicalIds:I

    .line 75
    invoke-static {p1}, Lcom/google/android/gcm/server/MulticastResult$Builder;->access$400(Lcom/google/android/gcm/server/MulticastResult$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gcm/server/MulticastResult;->multicastId:J

    .line 76
    invoke-static {p1}, Lcom/google/android/gcm/server/MulticastResult$Builder;->access$500(Lcom/google/android/gcm/server/MulticastResult$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gcm/server/MulticastResult;->results:Ljava/util/List;

    .line 77
    invoke-static {p1}, Lcom/google/android/gcm/server/MulticastResult$Builder;->access$600(Lcom/google/android/gcm/server/MulticastResult$Builder;)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 81
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gcm/server/MulticastResult;->retryMulticastIds:Ljava/util/List;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gcm/server/MulticastResult$Builder;Lcom/google/android/gcm/server/MulticastResult$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gcm/server/MulticastResult$Builder;
    .param p2, "x1"    # Lcom/google/android/gcm/server/MulticastResult$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gcm/server/MulticastResult;-><init>(Lcom/google/android/gcm/server/MulticastResult$Builder;)V

    return-void
.end method


# virtual methods
.method public getCanonicalIds()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult;->canonicalIds:I

    return v0
.end method

.method public getFailure()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult;->failure:I

    return v0
.end method

.method public getMulticastId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/android/gcm/server/MulticastResult;->multicastId:J

    return-wide v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gcm/server/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gcm/server/MulticastResult;->results:Ljava/util/List;

    return-object v0
.end method

.method public getRetryMulticastIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gcm/server/MulticastResult;->retryMulticastIds:Ljava/util/List;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult;->success:I

    return v0
.end method

.method public getTotal()I
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/gcm/server/MulticastResult;->success:I

    iget v1, p0, Lcom/google/android/gcm/server/MulticastResult;->failure:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MulticastResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "multicast_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gcm/server/MulticastResult;->multicastId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gcm/server/MulticastResult;->getTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gcm/server/MulticastResult;->success:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gcm/server/MulticastResult;->failure:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "canonical_ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gcm/server/MulticastResult;->canonicalIds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/gcm/server/MulticastResult;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gcm/server/MulticastResult;->results:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
