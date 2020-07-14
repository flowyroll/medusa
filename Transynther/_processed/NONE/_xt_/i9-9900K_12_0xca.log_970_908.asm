.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x313a, %r15
nop
dec %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r15
movaps %xmm2, (%r15)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x3b46, %r12
clflush (%r12)
nop
nop
nop
add %r10, %r10
mov (%r12), %r11d
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x16c4c, %r14
nop
nop
nop
xor %rcx, %rcx
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
xor $23967, %r10
lea addresses_WT_ht+0x19de, %r10
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r10)
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0xa25c, %rsi
lea addresses_UC_ht+0x224c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r11
mov $110, %rcx
rep movsl
nop
nop
nop
dec %r10
lea addresses_A_ht+0xd44c, %rsi
nop
nop
sub $3847, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rsi)
add %r11, %r11
lea addresses_UC_ht+0x1b44c, %rsi
lea addresses_normal_ht+0x15c4c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $56377, %r12
mov $84, %rcx
rep movsl
nop
nop
nop
add $59551, %rdi
lea addresses_UC_ht+0x1558c, %rsi
lea addresses_UC_ht+0xc28b, %rdi
add %r14, %r14
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
add $14042, %r15
lea addresses_WT_ht+0xe11c, %r15
nop
nop
add %r12, %r12
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
cmp $61593, %r11
lea addresses_D_ht+0x718c, %r11
nop
nop
nop
add %rsi, %rsi
movw $0x6162, (%r11)
nop
nop
nop
nop
xor $46282, %r15
lea addresses_D_ht+0xfac4, %rsi
nop
xor %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %rsi
movaps %xmm3, (%rsi)
nop
nop
nop
nop
nop
sub $54113, %r10
lea addresses_WT_ht+0x2e4c, %r11
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r11)
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1aa4c, %r15
inc %r11
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rdx
push %rsi

// Store
lea addresses_A+0x4f9c, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %r10, %r10
movb $0x51, (%r11)
cmp %r9, %r9

// Store
mov $0x307d4e0000000d4c, %r14
nop
nop
nop
nop
nop
cmp $42432, %r12
movb $0x51, (%r14)
nop
and %r10, %r10

// Load
lea addresses_normal+0x1fd24, %r11
nop
nop
nop
nop
xor %r12, %r12
mov (%r11), %r9w
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_A+0x624c, %r11
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
xor $56129, %rdx

// Store
lea addresses_WT+0x115c4, %r10
nop
nop
sub $25786, %r14
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
nop
nop
sub $38947, %r9

// Store
lea addresses_normal+0x1c84c, %rsi
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
inc %rsi

// Store
lea addresses_D+0x1decc, %r10
clflush (%r10)
nop
xor $35069, %rsi
movw $0x5152, (%r10)
nop
nop
sub $567, %r9

// Faulty Load
lea addresses_normal+0x144c, %r14
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'34': 970}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
