.class public interface abstract Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;
.super Ljava/lang/Object;
.source "OAuth1FlowDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/oauth/OAuth1FlowDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlowResultHandler"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onError(ILjava/lang/String;Ljava/lang/String;)V
.end method
