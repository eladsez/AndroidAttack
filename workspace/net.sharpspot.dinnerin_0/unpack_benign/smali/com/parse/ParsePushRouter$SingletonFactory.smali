.class Lcom/parse/ParsePushRouter$SingletonFactory;
.super Lcom/parse/ParsePushRouter$CallbackFactory;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePushRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonFactory"
.end annotation


# instance fields
.field singleton:Lcom/parse/PushCallback;


# direct methods
.method constructor <init>(Lcom/parse/PushCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/parse/PushCallback;

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>()V

    iput-object p1, p0, Lcom/parse/ParsePushRouter$SingletonFactory;->singleton:Lcom/parse/PushCallback;

    return-void
.end method


# virtual methods
.method newCallback()Lcom/parse/PushCallback;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/parse/ParsePushRouter$SingletonFactory;->singleton:Lcom/parse/PushCallback;

    return-object v0
.end method

.method requiresSubscription()Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return-object v0
.end method
