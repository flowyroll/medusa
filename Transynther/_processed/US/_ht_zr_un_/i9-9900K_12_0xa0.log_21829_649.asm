.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x154ca, %r14
nop
dec %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
sub $16413, %r11
lea addresses_UC_ht+0x10c2a, %r8
nop
cmp $58043, %r15
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
xor $38727, %r13
lea addresses_normal_ht+0xf2ca, %rsi
lea addresses_normal_ht+0xac0a, %rdi
nop
nop
nop
cmp %r14, %r14
mov $47, %rcx
rep movsb
nop
nop
nop
nop
xor $30490, %r11
lea addresses_UC_ht+0x54ca, %rsi
lea addresses_normal_ht+0x1e0ca, %rdi
and $58452, %r15
mov $125, %rcx
rep movsw
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x1d27a, %rsi
lea addresses_A_ht+0x750a, %rdi
nop
nop
nop
nop
and $56944, %r15
mov $12, %rcx
rep movsq
xor $28777, %r11
lea addresses_WC_ht+0x1b5ca, %rcx
nop
nop
nop
nop
xor $9755, %rdi
mov (%rcx), %r8d
nop
nop
nop
inc %r11
lea addresses_A_ht+0xa90a, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
lfence
lea addresses_normal_ht+0x63ca, %rsi
nop
nop
nop
nop
nop
sub $45683, %r11
mov (%rsi), %rdi
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x178c7, %rcx
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
add $8487, %rcx
lea addresses_WC_ht+0x194ca, %rsi
lea addresses_A_ht+0x9f4a, %rdi
nop
nop
cmp $4468, %r8
mov $100, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x7b2a, %r14
xor $61742, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rdi
push %rdx

// Store
lea addresses_US+0x1cca, %r14
nop
nop
nop
nop
add $47154, %r10
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and $770, %rbp

// Store
lea addresses_US+0x17d0e, %r10
nop
nop
nop
dec %r15
movl $0x51525354, (%r10)
nop
xor %r15, %r15

// Store
lea addresses_WC+0x134ca, %r15
xor %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x1cca, %r14
nop
nop
nop
nop
xor %r15, %r15
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'a4': 1, 'df': 7, '47': 1513, 'bc': 1, '6c': 1, '72': 1, '44': 96, '48': 36, '49': 4155, '98': 2, '08': 5, '00': 16000, '82': 1, '42': 1, 'ff': 8, 'da': 1}
00 6c 00 00 47 00 00 49 00 00 00 49 49 49 00 00 00 00 00 47 00 49 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 49 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 49 00 49 49 00 00 00 47 00 00 00 49 49 49 00 00 47 49 49 49 00 00 00 47 47 49 49 00 00 00 47 00 00 00 00 00 00 49 00 00 00 47 47 47 00 00 00 47 00 49 00 00 00 00 47 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 47 49 49 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 47 49 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 47 00 00 00 00 00 00 00 47 00 49 00 00 00 49 00 00 47 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 49 49 00 00 00 00 00 49 49 00 49 49 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 00 47 47 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 00 49 49 00 00 00 00 00 00 49 00 49 00 47 00 00 00 00 00 00 00 49 00 49 00 00 47 00 47 49 49 49 00 00 00 49 49 00 00 00 00 00 49 49 00 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 47 00 49 00 00 00 47 49 00 00 00 49 00 00 44 00 00 00 47 00 49 49 47 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 49 00 47 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 49 49 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 47 00 49 00 00 00 00 00 00 49 00 00 00 00 47 00 00 00 00 00 00 00 00 49 00 00 47 00 00 49 00 00 47 47 00 00 00 00 00 00 49 49 49 00 00 00 00 00 82 42 00 00 00 00 00 49 49 00 49 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 47 00 00 00 47 00 49 49 49 00 00 00 00 00 00 00 00 00 47 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 47 00 00 00 00 00 49 49 00 00 00 00 00 49 49 00 00 00 00 47 00 47 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 49 00 00 47 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 47 47 49 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 47 00 49 49 49 00 00 00 00 47 00 00 49 00 00 00 00 00 49 00 00 00 00 47 00 00 00 00 00 00 47 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 49 49 00 00 00 00 00 47 47 00 00 49 00 00 00 00 00 49 00 49 00 00 00 47 48 48 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 47 00 00 49 00 49 00 00 47 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 47 00 47 49 00 00 00 00 00 49 49 00 00 00 00 00 49 49 00 00 47 47 00 00 49 00 00 00 00
*/
