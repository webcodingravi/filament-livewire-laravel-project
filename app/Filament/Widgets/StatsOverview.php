<?php

namespace App\Filament\Widgets;


use App\Models\Member;
use App\Models\Article;
use App\Models\Service;
use Flowframe\Trend\Trend;
use Filament\Support\Enums\IconPosition;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Filament\Widgets\Concerns\InteractsWithPageFilters;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;


    use InteractsWithPageFilters;

    protected function getStats(): array
    {
        $start =  $this->filters['startDate'];
        $end =  $this->filters['endDate'];


        return [
            Stat::make('New Member',
            Member::when($start,
            fn($query) => $query->whereDate('created_at', '>', $start))
            ->when($end,
             fn($query) => $query->whereDate('created_at', '<', $end))
            ->count())
            ->description('New Member That have joined')
            ->descriptionIcon('heroicon-m-user-group',IconPosition::Before)
            ->chart([2,5,10,18,40])
            ->color('success')
            ->extraAttributes([
                'class' => 'cursor-pointer',
                'wire:click' => "\$dispatch('setStatusFilter', { filter: 'processed' })",
            ]),


           Stat::make('Article Created',Article::
           when($start,
            fn($query) => $query->whereDate('created_at', '>', $start))
            ->when($end,
             fn($query) => $query->whereDate('created_at', '<', $end))
           ->count())
            ->description('Article Created')
            ->descriptionIcon('heroicon-m-folder',IconPosition::Before)
            ->chart([2,5,10,18,40])
            ->color('danger')
            ->extraAttributes([
                'class' => 'cursor-pointer',
                'wire:click' => "\$dispatch('setStatusFilter', { filter: 'processed' })",
            ]),


            Stat::make('Services Created',Service::
            when($start,
            fn($query) => $query->whereDate('created_at', '>', $start))
            ->when($end,
             fn($query) => $query->whereDate('created_at', '<', $end))
            ->count())
            ->description('Services Created')
            ->descriptionIcon('heroicon-m-inbox',IconPosition::Before)
            ->chart([2,5,10,18,40])
            ->color('info')
            ->extraAttributes([
                'class' => 'cursor-pointer',
                'wire:click' => "\$dispatch('setStatusFilter', { filter: 'processed' })",
            ]),


        ];





    }
}