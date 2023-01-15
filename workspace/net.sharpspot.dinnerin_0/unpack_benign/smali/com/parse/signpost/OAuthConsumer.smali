.class public interface abstract Lcom/parse/signpost/OAuthConsumer;
.super Ljava/lang/Object;
.source "OAuthConsumer.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getConsumerKey()Ljava/lang/String;
.end method

.method public abstract getConsumerSecret()Ljava/lang/String;
.end method

.method public abstract getRequestParameters()Lcom/parse/signpost/http/HttpParameters;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenSecret()Ljava/lang/String;
.end method

.method public abstract setAdditionalParameters(Lcom/parse/signpost/http/HttpParameters;)V
.end method

.method public abstract setMessageSigner(Lcom/parse/signpost/signature/OAuthMessageSigner;)V
.end method

.method public abstract setSendEmptyTokens(Z)V
.end method

.method public abstract setSigningStrategy(Lcom/parse/signpost/signature/SigningStrategy;)V
.end method

.method public abstract setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sign(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;,
            Lcom/parse/signpost/exception/OAuthExpectationFailedException;,
            Lcom/parse/signpost/exception/OAuthCommunicationException;
        }
    .end annotation
.end method

.method public abstract sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;,
            Lcom/parse/signpost/exception/OAuthExpectationFailedException;,
            Lcom/parse/signpost/exception/OAuthCommunicationException;
        }
    .end annotation
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;,
            Lcom/parse/signpost/exception/OAuthExpectationFailedException;,
            Lcom/parse/signpost/exception/OAuthCommunicationException;
        }
    .end annotation
.end method
