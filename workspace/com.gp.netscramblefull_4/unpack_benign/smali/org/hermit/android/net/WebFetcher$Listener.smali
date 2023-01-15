.class public interface abstract Lorg/hermit/android/net/WebFetcher$Listener;
.super Ljava/lang/Object;
.source "WebFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/net/WebFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onWebData(Ljava/net/URL;Ljava/lang/Object;J)V
.end method

.method public abstract onWebDone()V
.end method

.method public abstract onWebError(Ljava/lang/String;)V
.end method
