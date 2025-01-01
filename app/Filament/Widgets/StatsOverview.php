<?php

namespace App\Filament\Widgets;


use App\Models\Member;
use App\Models\Article;
use App\Models\Service;
use Flowframe\Trend\Trend;
use Filament\Support\Enums\IconPosition;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;


    protected function getStats(): array
    {



        return [
            Stat::make('New Member',Member::count())
            ->description('New Member That have joined')
            ->descriptionIcon('heroicon-m-user-group',IconPosition::Before)
            ->chart([2,5,10,18,40])
            ->color('success')
            ->extraAttributes([
                'class' => 'cursor-pointer',
                'wire:click' => "\$dispatch('setStatusFilter', { filter: 'processed' })",
            ]),


           Stat::make('Article Created',Article::count())
            ->description('Article Created')
            ->descriptionIcon('heroicon-m-folder',IconPosition::Before)
            ->chart([2,5,10,18,40])
            ->color('danger')
            ->extraAttributes([
                'class' => 'cursor-pointer',
                'wire:click' => "\$dispatch('setStatusFilter', { filter: 'processed' })",
            ]),


            Stat::make('Services Created',Service::count())
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