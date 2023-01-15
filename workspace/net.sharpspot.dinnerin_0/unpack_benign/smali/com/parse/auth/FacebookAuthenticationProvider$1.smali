.class Lcom/parse/auth/FacebookAuthenticationProvider$1;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/facebook/android/Facebook$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/auth/FacebookAuthenticationProvider;->extendAccessToken(Landroid/content/Context;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
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
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$0(Lcom/parse/auth/FacebookAuthenticationProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$1(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Error;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Error;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$2(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$2(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method
