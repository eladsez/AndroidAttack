.class Lcom/parse/ParseUser$16;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->authenticateAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$16;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/parse/ParseUser$16;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->setCancelled()V

    .line 1103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/parse/ParseUser$16;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 1107
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/parse/ParseUser$16;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 1099
    return-void
.end method
