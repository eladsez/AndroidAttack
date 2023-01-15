.class public interface abstract Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
.super Ljava/lang/Object;
.source "ParseAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/auth/ParseAuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseAuthenticationCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
