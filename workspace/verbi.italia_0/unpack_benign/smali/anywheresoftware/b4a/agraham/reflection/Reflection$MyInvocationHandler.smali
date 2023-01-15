.class Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;
.super Ljava/lang/Object;
.source "Reflection.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/reflection/Reflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInvocationHandler"
.end annotation


# instance fields
.field ba:Lanywheresoftware/b4a/BA;

.field event:Ljava/lang/String;

.field final synthetic this$0:Lanywheresoftware/b4a/agraham/reflection/Reflection;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 1
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .param p3, "b4asub"    # Ljava/lang/String;

    .prologue
    .line 1180
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;->this$0:Lanywheresoftware/b4a/agraham/reflection/Reflection;

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;->event:Ljava/lang/String;

    .line 1179
    iput-object p2, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;->ba:Lanywheresoftware/b4a/BA;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1184
    if-nez p3, :cond_0

    .line 1185
    new-array p3, v2, [Ljava/lang/Object;

    .line 1186
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 1187
    .local v0, "args1":[Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1188
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 1189
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;->ba:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;->event:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
