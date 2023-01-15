.class public abstract Lanywheresoftware/b4a/B4AClass$ImplB4AClass;
.super Ljava/lang/Object;
.source "B4AClass.java"

# interfaces
.implements Lanywheresoftware/b4a/B4AClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/B4AClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImplB4AClass"
.end annotation


# instance fields
.field public ba:Lanywheresoftware/b4a/BA;

.field protected mostCurrent:Lanywheresoftware/b4a/B4AClass$ImplB4AClass;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsInitialized()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;->ba:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityBA()Lanywheresoftware/b4a/BA;
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "aba":Lanywheresoftware/b4a/BA;
    iget-object v1, p0, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aba":Lanywheresoftware/b4a/BA;
    check-cast v0, Lanywheresoftware/b4a/BA;

    .line 22
    .restart local v0    # "aba":Lanywheresoftware/b4a/BA;
    :cond_0
    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;->ba:Lanywheresoftware/b4a/BA;

    .line 24
    :cond_1
    return-object v0
.end method

.method public getBA()Lanywheresoftware/b4a/BA;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lanywheresoftware/b4a/B4AClass$ImplB4AClass;->ba:Lanywheresoftware/b4a/BA;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lanywheresoftware/b4a/BA;->TypeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
