.class Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;
.super Ljava/lang/Object;
.source "RemoteViewsWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4ARunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/RemoteViewsWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/RemoteViewsWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;->this$0:Lanywheresoftware/b4a/objects/RemoteViewsWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;->val$event:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;->val$event:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method
