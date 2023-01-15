.class Lcom/parse/auth/FacebookAuthenticationProvider$2$1;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/auth/FacebookAuthenticationProvider$2;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/auth/FacebookAuthenticationProvider$2;


# direct methods
.method constructor <init>(Lcom/parse/auth/FacebookAuthenticationProvider$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/auth/FacebookAuthenticationProvider$2;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/auth/FacebookAuthenticationProvider$2;

    invoke-static {v0}, Lcom/parse/auth/FacebookAuthenticationProvider$2;->access$0(Lcom/parse/auth/FacebookAuthenticationProvider$2;)Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$2(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/auth/FacebookAuthenticationProvider$2;

    invoke-static {v0}, Lcom/parse/auth/FacebookAuthenticationProvider$2;->access$0(Lcom/parse/auth/FacebookAuthenticationProvider$2;)Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseException;

    const/4 v2, -0x1

    .line 140
    const-string v3, "An error occurred while fetching the Facebook user\'s identity."

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-static {v0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$2(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2$1;->this$1:Lcom/parse/auth/FacebookAuthenticationProvider$2;

    invoke-static {v0}, Lcom/parse/auth/FacebookAuthenticationProvider$2;->access$0(Lcom/parse/auth/FacebookAuthenticationProvider$2;)Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    const-string v2, "id"

    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$1(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/String;)V

    goto :goto_0
.end method
