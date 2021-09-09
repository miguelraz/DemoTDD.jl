using DemoTDD
using Test

@testset "DemoTDD.jl" begin
    # Write your tests here.

    @test 3 == 3
	# Super cool y nuevo proceso:
	#@test T == T broken=(T = NaN)
    #
    @test_broken 1 == 2

    @testset "Nivel 1" begin
        @test 1 == 1
        @testset "Nivel 2" begin
            @test 2 == 2
            @testset "Nivel 3" begin
                @test 3 == 2
            end
        end
    end
    for i in (1,2,3)
        @test i == i
    end

    @testset "Nivel 1 otra vez" begin
        @test true
        @test false
        @test true
    end

    @test all(true for i in 1:100000)

    @test_throws BoundsError [1, 2][3]



end
