.class public Lanywheresoftware/b4a/agraham/reflection/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Andrew Graham"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Reflector"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 2.4f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;
    }
.end annotation


# static fields
.field private static primitives:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final version:D = 2.4


# instance fields
.field public Target:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lanywheresoftware/b4a/agraham/reflection/Reflection$1;

    invoke-direct {v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$1;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->primitives:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classforname(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v1, Lanywheresoftware/b4a/agraham/reflection/Reflection;->primitives:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lanywheresoftware/b4a/agraham/reflection/Reflection;->primitives:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "type":Ljava/lang/String;
    check-cast p0, Ljava/lang/Class;

    move-object v1, p0

    .line 167
    :goto_0
    return-object v1

    .restart local p0    # "type":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runmethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "Args"    # [Ljava/lang/Object;
    .param p3, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "java.lang.Object"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 205
    .local v4, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 206
    .local v5, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 212
    .local v2, "loop":Ljava/lang/Boolean;
    :cond_0
    if-ne v5, v4, :cond_1

    .line 213
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 214
    :cond_1
    invoke-virtual {v5, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 215
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    iget-object v6, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v3, v6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 217
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 219
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    move-object v1, v0

    .line 220
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 225
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 207
    if-nez v6, :cond_0

    .line 226
    throw v1

    .line 221
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 223
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/agraham/reflection/Reflection;
    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method private static sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "o"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Class;

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 182
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 184
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 188
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 192
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 194
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    .line 196
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, p0

    .line 198
    goto :goto_0
.end method


# virtual methods
.method public CreateObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-static {p1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 239
    .local v1, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 240
    .end local v1    # "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public CreateObject2(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "types"    # [Ljava/lang/String;

    .prologue
    .line 257
    array-length v5, p2

    new-array v4, v5, [Ljava/lang/Class;

    .line 261
    .local v4, "ts":[Ljava/lang/Class;
    :try_start_0
    invoke-static {p1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 262
    .local v3, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_0

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 265
    .local v0, "ci":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 263
    .end local v0    # "ci":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    aget-object v5, p3, v2

    invoke-static {v5}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    .end local v3    # "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public GetActivity(Lanywheresoftware/b4a/BA;)Landroid/app/Activity;
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 660
    iget-object v1, p1, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 661
    .local v0, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/BA;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/agraham/reflection/Reflection;
    check-cast p0, Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    return-object v1
.end method

.method public GetActivityBA(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/BA;
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 673
    iget-object v1, p1, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 674
    .local v0, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/BA;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/agraham/reflection/Reflection;
    check-cast p0, Lanywheresoftware/b4a/BA;

    return-object p0
.end method

.method public GetArray([I)Ljava/lang/Object;
    .locals 4
    .param p1, "indeces"    # [I

    .prologue
    const/4 v3, 0x1

    .line 599
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 600
    .local v0, "arr":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 604
    array-length v2, p1

    sub-int/2addr v2, v3

    aget v2, p1, v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 602
    :cond_0
    aget v2, p1, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetB4AClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "component"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 687
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 695
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 688
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public GetContext(Lanywheresoftware/b4a/BA;)Landroid/content/Context;
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 648
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    return-object v0
.end method

.method public GetField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    const-string v5, "java.lang.Object"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 310
    .local v3, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 316
    .local v4, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 317
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 318
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 319
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 322
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 324
    if-ne v4, v3, :cond_0

    .line 325
    throw v1
.end method

.method public GetField2(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldinfo"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetFieldInfo(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 282
    const-string v5, "java.lang.Object"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 283
    .local v3, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 289
    .local v4, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 290
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-object v2

    .line 292
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 295
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 297
    if-ne v4, v3, :cond_0

    .line 298
    throw v1
.end method

.method public GetMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "java.lang.Object"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 755
    .local v4, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 756
    .local v5, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 757
    const/4 v7, 0x0

    new-array p2, v7, [Ljava/lang/String;

    .line 758
    :cond_0
    array-length v7, p2

    new-array v6, v7, [Ljava/lang/Class;

    .line 759
    .local v6, "ots":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p2

    if-lt v2, v7, :cond_2

    .line 768
    :cond_1
    :try_start_0
    invoke-virtual {v5, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 769
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    return-object v3

    .line 761
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_2
    aget-object v7, p2, v2

    invoke-static {v7}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v2

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 773
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    move-object v1, v0

    .line 774
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 776
    if-ne v5, v4, :cond_1

    .line 777
    throw v1
.end method

.method public GetMostCurrent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 732
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 733
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "mostCurrent"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 734
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 735
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 736
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 738
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public GetProcessBA(Ljava/lang/String;)Lanywheresoftware/b4a/BA;
    .locals 5
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 709
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 710
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "processBA"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 711
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 712
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/agraham/reflection/Reflection;
    check-cast p0, Lanywheresoftware/b4a/BA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 713
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 715
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public GetProxy(Lanywheresoftware/b4a/BA;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Proxy;
    .locals 5
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "interfacenames"    # [Ljava/lang/String;
    .param p3, "b4asubname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1164
    array-length v3, p2

    new-array v1, v3, [Ljava/lang/Class;

    .line 1165
    .local v1, "ifs":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 1167
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;

    invoke-direct {v4, p0, p1, p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection$MyInvocationHandler;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-static {v3, v1, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Proxy;

    .line 1168
    .local v2, "p":Ljava/lang/reflect/Proxy;
    return-object v2

    .line 1166
    .end local v2    # "p":Ljava/lang/reflect/Proxy;
    :cond_0
    aget-object v3, p2, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetPublicField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 346
    :try_start_0
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 347
    .local v2, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 348
    .local v1, "f":Ljava/lang/reflect/Field;
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 349
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public GetStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "java.lang.Object"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 365
    .local v3, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 371
    .local v4, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v4, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 372
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 373
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 374
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 377
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 379
    if-ne v4, v3, :cond_0

    .line 380
    throw v1
.end method

.method public InvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 787
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/agraham/reflection/Reflection;
    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method public LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public RunMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 802
    new-array v0, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->runmethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RunMethod2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "type1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 813
    new-array v0, v2, [Ljava/lang/Object;

    .line 814
    .local v0, "oo":[Ljava/lang/Object;
    new-array v1, v2, [Ljava/lang/Class;

    .line 815
    .local v1, "ot":[Ljava/lang/Class;
    invoke-static {p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    .line 816
    aget-object v2, v1, v3

    invoke-static {p2, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    .line 817
    invoke-direct {p0, p1, v0, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->runmethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public RunMethod3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "type1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "type2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 828
    new-array v0, v2, [Ljava/lang/Object;

    .line 829
    .local v0, "oo":[Ljava/lang/Object;
    new-array v1, v2, [Ljava/lang/Class;

    .line 830
    .local v1, "ot":[Ljava/lang/Class;
    invoke-static {p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    .line 831
    invoke-static {p5}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    .line 832
    aget-object v2, v1, v3

    invoke-static {p2, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    .line 833
    aget-object v2, v1, v4

    invoke-static {p4, v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v4

    .line 834
    invoke-direct {p0, p1, v0, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->runmethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public RunMethod4(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 850
    if-nez p3, :cond_0

    .line 851
    const/4 v2, 0x0

    new-array p3, v2, [Ljava/lang/String;

    .line 852
    :cond_0
    array-length v2, p3

    new-array v1, v2, [Ljava/lang/Class;

    .line 853
    .local v1, "ot":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_1

    .line 857
    invoke-direct {p0, p1, p2, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->runmethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 855
    :cond_1
    aget-object v2, p3, v0

    invoke-static {v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public RunPublicmethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "Method"    # Ljava/lang/String;
    .param p2, "Args"    # [Ljava/lang/Object;
    .param p3, "types"    # [Ljava/lang/String;

    .prologue
    .line 872
    if-nez p3, :cond_0

    .line 873
    const/4 v4, 0x0

    new-array p3, v4, [Ljava/lang/String;

    .line 874
    :cond_0
    array-length v4, p3

    new-array v3, v4, [Ljava/lang/Class;

    .line 875
    .local v3, "ot":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-lt v1, v4, :cond_1

    .line 881
    :try_start_0
    iget-object v4, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 882
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v2, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 877
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_1
    aget-object v4, p3, v1

    invoke-static {v4}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public RunStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, "ex":Ljava/lang/Exception;
    if-nez p4, :cond_0

    .line 904
    const/4 v7, 0x0

    new-array p4, v7, [Ljava/lang/String;

    .line 905
    :cond_0
    const-string v7, "java.lang.Object"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 906
    .local v4, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 907
    .local v5, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, p4

    new-array v6, v7, [Ljava/lang/Class;

    .line 908
    .local v6, "ots":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p4

    if-lt v2, v7, :cond_2

    .line 917
    :cond_1
    :try_start_0
    invoke-virtual {v5, p2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 918
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 919
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    return-object v7

    .line 910
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_2
    aget-object v7, p4, v2

    invoke-static {v7}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v2

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 922
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    move-object v1, v0

    .line 923
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 928
    if-ne v5, v4, :cond_1

    .line 929
    throw v1

    .line 924
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 926
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/agraham/reflection/Reflection;
    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method public SetArray([ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "indeces"    # [I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 614
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 615
    .local v0, "arr":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_0

    .line 619
    invoke-static {p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {p2, v3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 620
    .local v2, "o":Ljava/lang/Object;
    array-length v3, p1

    sub-int/2addr v3, v4

    aget v3, p1, v3

    invoke-static {v0, v3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 621
    return-void

    .line 617
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    aget v3, p1, v1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public SetArray2([ILjava/lang/Object;)V
    .locals 4
    .param p1, "indeces"    # [I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 630
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 631
    .local v0, "arr":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 635
    array-length v2, p1

    sub-int/2addr v2, v3

    aget v2, p1, v2

    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 636
    return-void

    .line 633
    :cond_0
    aget v2, p1, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public SetField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 391
    const-string v6, "java.lang.Object"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 392
    .local v4, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 398
    .local v5, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 399
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 400
    invoke-static {p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {p2, v6}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 401
    .local v3, "o":Ljava/lang/Object;
    iget-object v6, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    return-void

    .line 403
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 406
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 408
    if-ne v5, v4, :cond_0

    .line 409
    throw v1
.end method

.method public SetField2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 420
    const-string v5, "java.lang.Object"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 421
    .local v3, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 427
    .local v4, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 428
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 429
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v2, v5, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    return-void

    .line 431
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 434
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 436
    if-ne v4, v3, :cond_0

    .line 437
    throw v1
.end method

.method public SetField3(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldinfo"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public SetField4(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldinfo"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public SetOnClickListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 979
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "fsub":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection$2;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$2;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    return-void
.end method

.method public SetOnCreateContextMenuListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 1031
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "fsub":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection$4;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$4;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1040
    return-void
.end method

.method public SetOnFocusListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 1055
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "fsub":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$5;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1064
    return-void
.end method

.method public SetOnKeyListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 1076
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "fsub":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$6;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1094
    return-void
.end method

.method public SetOnLongClickListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 1001
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "fsub":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection$3;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$3;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1020
    return-void
.end method

.method public SetOnTouchListener(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 1112
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "fsub":Ljava/lang/String;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection$7;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection$7;-><init>(Lanywheresoftware/b4a/agraham/reflection/Reflection;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1130
    return-void
.end method

.method public SetPublicField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 470
    :try_start_0
    iget-object v4, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 471
    .local v3, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 472
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-static {p3}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {p2, v4}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 473
    .local v2, "o":Ljava/lang/Object;
    iget-object v4, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return-void

    .line 474
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public SetPublicField2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 490
    :try_start_0
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 491
    .local v2, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 492
    .local v1, "f":Ljava/lang/reflect/Field;
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v1, v3, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    return-void

    .line 493
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "java.lang.Object"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 510
    .local v4, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 516
    .local v5, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v5, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 517
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 518
    invoke-static {p4}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->classforname(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {p3, v6}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->sethelper(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 519
    .local v3, "o":Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-void

    .line 521
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 524
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 526
    if-ne v5, v4, :cond_0

    .line 527
    throw v1
.end method

.method public SetStaticField2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "java.lang.Object"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 541
    .local v3, "ob":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 547
    .local v4, "ot":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {v4, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 548
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 549
    const/4 v5, 0x0

    invoke-virtual {v2, v5, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    return-void

    .line 551
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 554
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 556
    if-ne v4, v3, :cond_0

    .line 557
    throw v1
.end method

.method public TargetRank()[I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 570
    iget-object v7, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 571
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-nez v7, :cond_0

    .line 572
    new-array v7, v8, [I

    .line 588
    :goto_0
    return-object v7

    .line 575
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "clsName":Ljava/lang/String;
    const/16 v7, 0x5b

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 577
    .local v2, "dims":I
    new-array v5, v2, [I

    .line 578
    .local v5, "lens":[I
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 579
    .local v0, "arr":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_1

    move-object v7, v5

    .line 588
    goto :goto_0

    .line 581
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 582
    .local v4, "len":I
    aput v4, v5, v3

    .line 583
    if-lez v4, :cond_2

    .line 585
    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 579
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public ToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsNull()Z
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 948
    const-wide v0, 0x4003333333333333L    # 2.4

    return-wide v0
.end method
