.class public interface abstract Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/utilities/ConnectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "CookieStoreInterface"
.end annotation


# virtual methods
.method public abstract receiveCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V
.end method

.method public abstract setCookie(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V
.end method

.method public abstract setCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V
.end method
