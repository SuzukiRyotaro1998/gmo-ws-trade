.PHONY run:
run:
	poetry run python ./gmo_hft_bot/main.py

.PHONY run_websockets:
run_websockets:
	poetry run python ./gmo_hft_bot/threads/websocket_threads.py

.PHONY run_trade:
run_trade:
	poetry run python ./gmo_hft_bot/threads/queue_and_trade_threads.py

.PHONY test:
test:
	poetry run python -m unittest -v

.PHONY run_backtest:
run_backtest:
	poetry run python ./backtest/main.py


# DEBUG
.PHONY run_with_mprof:
run_with_mprof:
	poetry run mprof run ./gmo_hft_bot/main.py

.PHONY mprof_plot:
mprof_plot:
	poetry run mprof plot

.PHONY delete_pycache:
delete_pycache:
	find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf