.class public Lcom/android/amomin1gofish/Models/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"


# instance fields
.field bluetoothModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/BluetoothModel;",
            ">;"
        }
    .end annotation
.end field

.field cardModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;)V"
        }
    .end annotation

    .line 9
    .local p1, "cardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/UserModel;->cardModelArrayList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/Models/UserModel;->bluetoothModelArrayList:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public getBluetoothModelArrayList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/BluetoothModel;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/UserModel;->bluetoothModelArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCardModelArrayList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/UserModel;->cardModelArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBluetoothModelArrayList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/BluetoothModel;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "bluetoothModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/BluetoothModel;>;"
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/UserModel;->bluetoothModelArrayList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public setCardModelArrayList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "cardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/UserModel;->cardModelArrayList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method
