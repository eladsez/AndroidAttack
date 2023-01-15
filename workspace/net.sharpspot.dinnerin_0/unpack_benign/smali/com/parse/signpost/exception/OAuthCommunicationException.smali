.class public Lcom/parse/signpost/exception/OAuthCommunicationException;
.super Lcom/parse/signpost/exception/OAuthException;
.source "OAuthCommunicationException.java"


# instance fields
.field private responseBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Communication with the service provider failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/parse/signpost/exception/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/signpost/exception/OAuthException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/parse/signpost/exception/OAuthCommunicationException;->responseBody:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/signpost/exception/OAuthCommunicationException;->responseBody:Ljava/lang/String;

    return-object v0
.end method
