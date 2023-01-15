.class public final Lcom/google/android/gcm/server/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gcm/server/Message$1;,
        Lcom/google/android/gcm/server/Message$Builder;
    }
.end annotation


# instance fields
.field private final collapseKey:Ljava/lang/String;

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

.field private final delayWhileIdle:Ljava/lang/Boolean;

.field private final timeToLive:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/android/gcm/server/Message$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gcm/server/Message$Builder;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/android/gcm/server/Message$Builder;->access$100(Lcom/google/android/gcm/server/Message$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Message;->collapseKey:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/google/android/gcm/server/Message$Builder;->access$200(Lcom/google/android/gcm/server/Message$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Message;->delayWhileIdle:Ljava/lang/Boolean;

    .line 116
    invoke-static {p1}, Lcom/google/android/gcm/server/Message$Builder;->access$300(Lcom/google/android/gcm/server/Message$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Message;->data:Ljava/util/Map;

    .line 117
    invoke-static {p1}, Lcom/google/android/gcm/server/Message$Builder;->access$400(Lcom/google/android/gcm/server/Message$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Message;->timeToLive:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gcm/server/Message$Builder;Lcom/google/android/gcm/server/Message$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gcm/server/Message$Builder;
    .param p2, "x1"    # Lcom/google/android/gcm/server/Message$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gcm/server/Message;-><init>(Lcom/google/android/gcm/server/Message$Builder;)V

    return-void
.end method


# virtual methods
.method public getCollapseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gcm/server/Message;->collapseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gcm/server/Message;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeToLive()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gcm/server/Message;->timeToLive:Ljava/lang/Integer;

    return-object v0
.end method

.method public isDelayWhileIdle()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gcm/server/Message;->delayWhileIdle:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Message("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/gcm/server/Message;->collapseKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 152
    const-string v3, "collapseKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gcm/server/Message;->collapseKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/google/android/gcm/server/Message;->timeToLive:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 155
    const-string v3, "timeToLive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gcm/server/Message;->timeToLive:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/google/android/gcm/server/Message;->delayWhileIdle:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 158
    const-string v3, "delayWhileIdle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gcm/server/Message;->delayWhileIdle:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/google/android/gcm/server/Message;->data:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    const-string v3, "data: {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v3, p0, Lcom/google/android/gcm/server/Message;->data:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 167
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 172
    :cond_5
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
