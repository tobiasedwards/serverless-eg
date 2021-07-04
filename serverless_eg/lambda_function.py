from typing import Any, Dict
from aws_lambda_powertools.utilities.typing import LambdaContext

from serverless_eg import __version__


def lambda_handler(event: Dict[str, Any], context: LambdaContext):
    print(f"serverless-eg {__version__}")