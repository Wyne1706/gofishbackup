.class public Lcom/android/amomin1gofish/Models/BluetoothModel;
.super Ljava/lang/Object;
.source "BluetoothModel.java"


# instance fields
.field adress:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adress"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/BluetoothModel;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/android/amomin1gofish/Models/BluetoothModel;->adress:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getAdress()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/BluetoothModel;->adress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/BluetoothModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAdress(Ljava/lang/String;)V
    .registers 2
    .param p1, "adress"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/BluetoothModel;->adress:Ljava/lang/String;

    .line 22
    return-void
.end method
