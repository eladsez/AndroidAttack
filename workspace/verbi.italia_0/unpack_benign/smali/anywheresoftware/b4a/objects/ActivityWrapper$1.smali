.class Lanywheresoftware/b4a/objects/ActivityWrapper$1;
.super Ljava/lang/Object;
.source "ActivityWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/ActivityWrapper;->reinitializeForShell(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/ActivityWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/ActivityWrapper;Lanywheresoftware/b4a/BA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ActivityWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 96
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v2, "activity_touch"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 96
    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return v6
.end method
