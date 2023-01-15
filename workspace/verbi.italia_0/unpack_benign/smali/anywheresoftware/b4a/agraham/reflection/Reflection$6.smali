.class Lanywheresoftware/b4a/agraham/reflection/Reflection$6;
.super Ljava/lang/Object;
.source "Reflection.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/reflection/Reflection;->SetOnKeyListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/agraham/reflection/Reflection;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$fsub:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;->this$0:Lanywheresoftware/b4a/agraham/reflection/Reflection;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;->val$fsub:Ljava/lang/String;

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 1082
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;->val$fsub:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1083
    .local v0, "b":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1085
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "b":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1090
    :goto_0
    return v1

    .line 1089
    .restart local v0    # "b":Ljava/lang/Object;
    :cond_0
    const-string v1, "B4A"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;->val$fsub:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " raiseEvent returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1090
    goto :goto_0
.end method
