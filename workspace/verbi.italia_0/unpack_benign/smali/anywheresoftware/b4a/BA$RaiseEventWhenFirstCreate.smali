.class Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;
.super Ljava/lang/Object;
.source "BA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/BA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RaiseEventWhenFirstCreate"
.end annotation


# instance fields
.field arguments:[Ljava/lang/Object;

.field ba:Lanywheresoftware/b4a/BA;

.field eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 347
    iget-object v0, p0, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;->ba:Lanywheresoftware/b4a/BA;

    const/4 v1, 0x0

    iget-object v3, p0, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;->eventName:Ljava/lang/String;

    iget-object v5, p0, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;->arguments:[Ljava/lang/Object;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method
