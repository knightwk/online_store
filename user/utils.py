import random


def send_message(mobile):
    # ...
    nums = '0123456789'
    code = ''
    for c in range(6):
        code += random.choice(nums)
    return code
