.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe3cf, %r8
nop
nop
and $14214, %r10
movb (%r8), %cl
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0xc5cf, %rdi
cmp $10921, %rsi
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
dec %rcx
lea addresses_WT_ht+0x101cf, %rsi
lea addresses_A_ht+0x10ca9, %rdi
clflush (%rsi)
nop
sub %r15, %r15
mov $124, %rcx
rep movsw
nop
nop
cmp $46533, %r9
lea addresses_WC_ht+0x16791, %r9
nop
xor $54403, %rsi
mov (%r9), %r10
sub $59542, %r10
lea addresses_A_ht+0x14bcf, %rsi
lea addresses_UC_ht+0x1d0cf, %rdi
nop
nop
cmp $28758, %r9
mov $34, %rcx
rep movsw
cmp $27645, %r10
lea addresses_D_ht+0x1e3cf, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %r15, %r15
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x12acf, %rsi
lea addresses_WC_ht+0x697, %rdi
clflush (%rdi)
nop
nop
nop
and $37587, %r9
mov $11, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x172ca, %rcx
nop
and $17588, %r11
movl $0x61626364, (%rcx)
nop
nop
and $45852, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rdi

// Load
lea addresses_A+0x10bcf, %rbx
add $51715, %r11
mov (%rbx), %r12
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_US+0x14bcf, %rbx
clflush (%rbx)
and $54471, %r11
movw $0x5152, (%rbx)
nop
nop
nop
xor $62448, %rdi

// Store
lea addresses_A+0x172e3, %r15
clflush (%r15)
cmp %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r15)
nop
inc %rdi

// Faulty Load
lea addresses_A+0x10bcf, %r11
nop
nop
nop
inc %r15
movups (%r11), %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'52': 3}
52 52 52
*/
