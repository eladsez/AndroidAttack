.class public interface abstract Lcom/parse/auth/ParseAuthenticationProvider;
.super Ljava/lang/Object;
.source "ParseAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
    }
.end annotation


# virtual methods
.method public abstract authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract deauthenticate()V
.end method

.method public abstract getAuthType()Ljava/lang/String;
.end method

.method public abstract restoreAuthentication(Lorg/json/JSONObject;)Z
.end method
