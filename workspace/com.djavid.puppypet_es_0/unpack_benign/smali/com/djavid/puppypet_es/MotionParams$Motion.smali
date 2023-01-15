.class Lcom/djavid/puppypet_es/MotionParams$Motion;
.super Ljava/lang/Object;
.source "MotionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/MotionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Motion"
.end annotation


# instance fields
.field private check_move:Z

.field private check_wall:Z

.field private items:Lcom/djavid/puppypet_es/MotionDrawable;

.field private name:Ljava/lang/String;

.field private next_state:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->next_state:Ljava/lang/String;

    .line 78
    iput-boolean v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->check_move:Z

    .line 79
    iput-boolean v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->check_wall:Z

    .line 81
    iput-object v1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->items:Lcom/djavid/puppypet_es/MotionDrawable;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/MotionParams$Motion;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/djavid/puppypet_es/MotionParams$Motion;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/djavid/puppypet_es/MotionParams$Motion;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->next_state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/djavid/puppypet_es/MotionParams$Motion;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->check_move:Z

    return v0
.end method

.method static synthetic access$10(Lcom/djavid/puppypet_es/MotionParams$Motion;Lcom/djavid/puppypet_es/MotionDrawable;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->items:Lcom/djavid/puppypet_es/MotionDrawable;

    return-void
.end method

.method static synthetic access$2(Lcom/djavid/puppypet_es/MotionParams$Motion;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->check_wall:Z

    return v0
.end method

.method static synthetic access$3(Lcom/djavid/puppypet_es/MotionParams$Motion;)Lcom/djavid/puppypet_es/MotionDrawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->items:Lcom/djavid/puppypet_es/MotionDrawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/djavid/puppypet_es/MotionParams$Motion;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/djavid/puppypet_es/MotionParams$Motion;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/djavid/puppypet_es/MotionParams$Motion;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->next_state:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/djavid/puppypet_es/MotionParams$Motion;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->check_move:Z

    return-void
.end method

.method static synthetic access$9(Lcom/djavid/puppypet_es/MotionParams$Motion;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/djavid/puppypet_es/MotionParams$Motion;->check_wall:Z

    return-void
.end method
