from pydantic import BaseModel

sides = ["BUY", "SELL"]


class BoardBase(BaseModel):
    id: str
    timestamp: int
    price: float
    size: float
    side: str
    symbol: str


class BoardCreate(BoardBase):
    pass


class Board(BoardBase):
    pass

    class Config:
        orm_mode = True


class TickBase(BaseModel):
    id: str
    timestamp: int
    price: float
    size: float
    symbol: str


class TickCreate(TickBase):
    pass


class Tick(TickBase):
    pass

    class Config:
        orm_mode = True


class OHLCVBase(BaseModel):
    timestamp: int
    open: float
    high: float
    low: float
    close: float
    volume: float
    symbol: str


class OHLCVCreate(OHLCVBase):
    pass


class OHLCV(OHLCVBase):
    pass

    class Config:
        orm_mode = True
