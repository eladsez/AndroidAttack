.class public Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneOrientation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneOrientation"
.end annotation


# instance fields
.field private listener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public StartListening(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 5
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 943
    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 944
    .local v1, "sm":Landroid/hardware/SensorManager;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_orientationchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "s":Ljava/lang/String;
    new-instance v2, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;-><init>(Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;->listener:Landroid/hardware/SensorEventListener;

    .line 958
    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 959
    return-void
.end method

.method public StopListening(Lanywheresoftware/b4a/BA;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 964
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;->listener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 966
    .local v0, "sm":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 968
    .end local v0    # "sm":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method
