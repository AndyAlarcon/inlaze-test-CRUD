from fastapi import FastAPI, HTTPException, Depends
from pydantic import BaseModel
from typing import List, Annotated
import models
from database import engine, SessionLocal
from sqlalchemy.orm import Session

app = FastAPI()
models.Base.metadata.create_all(bind=engine)

class PlanetBase(BaseModel):
    name: str
    mass: float
    diameter: float
    orbital_period: float
    number_of_moons: int

