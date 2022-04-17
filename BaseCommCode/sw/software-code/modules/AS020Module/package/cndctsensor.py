# Copyright (C) 2021 Intel Corporation 
# Licensed under the MIT license. See LICENSE file in the project root for
# full license information

from package.sensor import *
from package.sensorcontroller import *
import random

class cndctSensor(SensorController):
    def __init__(self,name='cndctSensor', real=False, offset=0x0) -> None:
        self.name = name
        self.modules = {
            'cndct'           : Sensor('cndct',             'float', real,  offset + 0x4*15)
        }

        if(real) :
                logger.debug(" \n\
                        cndctSensors: \n\
                            cndct : \n\
                                Data : {} \n"
                    .format(
                        hex(self.modules.get('cndct').offset)
                    )
                )

