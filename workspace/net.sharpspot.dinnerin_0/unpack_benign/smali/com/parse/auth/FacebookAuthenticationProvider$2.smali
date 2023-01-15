.class Lcom/parse/auth/FacebookAuthenticationProvider$2;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/auth/FacebookAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/auth/FacebookAuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/parse/auth/FacebookAuthenticationProvider$2;)Lcom/parse/auth/FacebookAuthenticationProvider;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 126
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne p2, v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$3(Lcom/parse/auth/FacebookAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "me"

    new-instance v2, Lcom/parse/auth/FacebookAuthenticationProvider$2$1;

    invoke-direct {v2, p0}, Lcom/parse/auth/FacebookAuthenticationProvider$2$1;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider$2;)V

    invoke-static {p1, v1, v2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    .line 147
    .local v0, "meRequest":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fields"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0

    .line 149
    .end local v0    # "meRequest":Lcom/facebook/Request;
    :cond_2
    if-eqz p3, :cond_3

    .line 150
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v1, p3}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$2(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$4(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    goto :goto_0
.end method
