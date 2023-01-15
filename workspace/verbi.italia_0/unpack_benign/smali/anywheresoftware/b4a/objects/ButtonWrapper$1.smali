.class Lanywheresoftware/b4a/objects/ButtonWrapper$1;
.super Ljava/lang/Object;
.source "ButtonWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/ButtonWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private down:Z

.field final synthetic this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/ButtonWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "_up"

    const-string v8, "_down"

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 43
    iput-boolean v7, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    .line 44
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_down"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    move v2, v6

    .line 73
    :goto_1
    return v2

    .line 46
    :cond_1
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 48
    :cond_2
    iput-boolean v6, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    .line 49
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_up"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 54
    .local v1, "states":[I
    if-nez v1, :cond_4

    move v2, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, v1

    if-lt v0, v2, :cond_5

    .line 68
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_up"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-boolean v6, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    goto :goto_0

    .line 57
    :cond_5
    aget v2, v1, v0

    const v3, 0x10100a7

    if-ne v2, v3, :cond_7

    .line 58
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    if-eqz v2, :cond_6

    move v2, v6

    .line 59
    goto :goto_1

    .line 61
    :cond_6
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_down"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-boolean v7, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    move v2, v6

    .line 63
    goto/16 :goto_1

    .line 56
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
