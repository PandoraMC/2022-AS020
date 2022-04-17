# Copyright (C) 2021 Intel Corporation 
# Licensed under the MIT license. See LICENSE file in the project root for
# full license information

from package.sensor import *
from package.sensorcontroller import *
import random

class RGBSensor(SensorController):
    def __init__(self,name='RGBSensor', real=False, offset=0x0) -> None:
        self.name = name
        self.modules = {
            'R'           : Sensor('R',             'float', real,  offset + 0x4*16),
            'G'           : Sensor('G',             'float', real,  offset + 0x4*17),
            'B'           : Sensor('B',             'float', real,  offset + 0x4*18)
        }

        if(real) :
                logger.debug(" \n\
                        RGBSensors: \n\
                            R : \n\
                                Data : {} \n\
                            G : \n\
                                Data : {} \n\
                            B : \n\
                                Data : {} \n"
                    .format(
                        hex(self.modules.get('R').offset),
                        hex(self.modules.get('G').offset),
                        hex(self.modules.get('B').offset)
                    )
                )

