.class Lanywheresoftware/b4a/agraham/reflection/Reflection$5;
.super Ljava/lang/Object;
.source "Reflection.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/reflection/Reflection;->SetOnFocusListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
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
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;->this$0:Lanywheresoftware/b4a/agraham/reflection/Reflection;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;->val$fsub:Ljava/lang/String;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1061
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;->val$fsub:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    return-void
.end method
