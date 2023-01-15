.class Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;
.super Ljava/lang/Object;
.source "Contacts2Wrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/Contacts2Wrapper;->GetContactsAsync(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/phone/Contacts2Wrapper;

.field private final synthetic val$Arguments:[Ljava/lang/String;

.field private final synthetic val$EventName:Ljava/lang/String;

.field private final synthetic val$IncludeNotes:Z

.field private final synthetic val$IncludePhoneNumber:Z

.field private final synthetic val$Query:Ljava/lang/String;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/Contacts2Wrapper;Ljava/lang/String;[Ljava/lang/String;ZZLanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->this$0:Lanywheresoftware/b4a/phone/Contacts2Wrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$Query:Ljava/lang/String;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$Arguments:[Ljava/lang/String;

    iput-boolean p4, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$IncludePhoneNumber:Z

    iput-boolean p5, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$IncludeNotes:Z

    iput-object p6, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p7, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$EventName:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->this$0:Lanywheresoftware/b4a/phone/Contacts2Wrapper;

    iget-object v1, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$Query:Ljava/lang/String;

    iget-object v2, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$Arguments:[Ljava/lang/String;

    iget-boolean v4, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$IncludePhoneNumber:Z

    iget-boolean v6, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$IncludeNotes:Z

    invoke-virtual {v0, v1, v2, v4, v6}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->GetContactsByQuery(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v7

    .line 137
    .local v7, "res":Lanywheresoftware/b4a/objects/collections/List;
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;->val$EventName:Ljava/lang/String;

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v7, v6, v3

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method
