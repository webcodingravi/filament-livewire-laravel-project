<?php

namespace App\Filament\Widgets;

use App\Models\Article;
use Flowframe\Trend\Trend;
use Illuminate\Support\Carbon;
use Flowframe\Trend\TrendValue;
use Filament\Widgets\ChartWidget;
use Filament\Widgets\Concerns\InteractsWithPageFilters;

class ArticleWidget extends ChartWidget
{
    protected static ?string $heading = 'Article Chart';

    protected int | string | array $columnSpan = 2;

    protected static ?int $sort = 2;

    use InteractsWithPageFilters;

    protected function getData(): array
    {

       $start =  $this->filters['startDate'];
       $end =  $this->filters['endDate'];

        $data = Trend::model(Article::class)
        ->between(
            start: $start ? Carbon::parse($start) : now()->subMonths(6),
            end: $end ? Carbon::parse($end) : now(),
        )
        ->perMonth()
        ->count();


        return [
            'datasets' => [
                [
                    'label' => 'Article Chart',
                    'data' => $data->map(fn (TrendValue $value) => $value->aggregate),
                ],
            ],
            'labels' => $data->map(fn (TrendValue $value) => $value->date),
        ];

    }

    protected function getType(): string
    {
        return 'line';
    }
}