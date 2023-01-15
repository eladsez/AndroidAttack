.class public abstract Lcom/parse/PushCallback;
.super Ljava/lang/Object;
.source "PushCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected channel:Ljava/lang/String;

.field protected localData:Lorg/json/JSONObject;

.field protected pushData:Lorg/json/JSONObject;

.field protected service:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "theChannel"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/parse/PushCallback;->channel:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setLocalData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "theLocalData"    # Lorg/json/JSONObject;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parse/PushCallback;->localData:Lorg/json/JSONObject;

    .line 15
    return-void
.end method

.method public setPushData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "thePushData"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/parse/PushCallback;->pushData:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method public setService(Landroid/app/Service;)V
    .locals 0
    .param p1, "theService"    # Landroid/app/Service;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parse/PushCallback;->service:Landroid/app/Service;

    .line 23
    return-void
.end method
