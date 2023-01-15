.class public Lcom/parse/ParseRole;
.super Lcom/parse/ParseObject;
.source "ParseRole.java"


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "_Role"

.field private static final NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "^[0-9a-zA-Z_\\- ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRole;->NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseRole;-><init>(Z)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/parse/ParseRole;->setName(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseACL;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/parse/ParseACL;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parse/ParseRole;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/parse/ParseRole;->setACL(Lcom/parse/ParseACL;)V

    .line 49
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "isPointer"    # Z

    .prologue
    .line 23
    const-string v0, "_Role"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "_Role"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Lcom/parse/ParseRelation;
    .locals 1

    .prologue
    .line 95
    const-string v0, "roles"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Lcom/parse/ParseRelation;
    .locals 1

    .prologue
    .line 83
    const-string v0, "users"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 110
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 113
    const-string v1, "A role\'s name can only be set before it has been saved."

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name must be a String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    sget-object v1, Lcom/parse/ParseRole;->NAME_PATTERN:Ljava/util/regex/Pattern;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string v1, "A role\'s name can only contain alphanumeric characters, _, -, and spaces."

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected validateSave()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/parse/ParseRole;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "New roles must specify a name."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method
