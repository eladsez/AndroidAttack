.class public Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ConcreteViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot initialize object."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
