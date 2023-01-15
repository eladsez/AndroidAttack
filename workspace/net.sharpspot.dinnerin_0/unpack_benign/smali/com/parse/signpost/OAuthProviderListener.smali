.class public interface abstract Lcom/parse/signpost/OAuthProviderListener;
.super Ljava/lang/Object;
.source "OAuthProviderListener.java"


# virtual methods
.method public abstract onResponseReceived(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract prepareRequest(Lcom/parse/signpost/http/HttpRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract prepareSubmission(Lcom/parse/signpost/http/HttpRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
