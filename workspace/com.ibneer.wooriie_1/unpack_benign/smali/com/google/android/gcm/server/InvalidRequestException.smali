.class public final Lcom/google/android/gcm/server/InvalidRequestException;
.super Ljava/io/IOException;
.source "InvalidRequestException.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gcm/server/InvalidRequestException;-><init>(ILjava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gcm/server/InvalidRequestException;->getMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/google/android/gcm/server/InvalidRequestException;->status:I

    .line 37
    iput-object p2, p0, Lcom/google/android/gcm/server/InvalidRequestException;->description:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static getMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # I
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP Status Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    .local v0, "base":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 43
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gcm/server/InvalidRequestException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/gcm/server/InvalidRequestException;->status:I

    return v0
.end method
