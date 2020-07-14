.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1689a, %rsi
nop
nop
nop
cmp $56856, %rbp
mov (%rsi), %r13w
and %rdx, %rdx
lea addresses_A_ht+0x1240a, %rcx
nop
nop
sub %r15, %r15
mov (%rcx), %r8
nop
and %rbp, %rbp
lea addresses_UC_ht+0x12e8a, %r15
nop
nop
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
dec %r8
lea addresses_A_ht+0x1040a, %rsi
lea addresses_normal_ht+0x14762, %rdi
nop
sub %r13, %r13
mov $116, %rcx
rep movsw
nop
nop
xor $38939, %r8
lea addresses_WT_ht+0x1ae0a, %rsi
lea addresses_WT_ht+0x19506, %rdi
nop
nop
nop
nop
xor $59267, %r8
mov $30, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x1929a, %r8
nop
nop
dec %r13
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1f6a, %r15
nop
nop
nop
nop
sub $28905, %r8
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rdx
nop
inc %rbp
lea addresses_WC_ht+0x17dfa, %r15
nop
nop
nop
xor %rbp, %rbp
mov (%r15), %r8w
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_US+0x140a, %r11
nop
nop
nop
mfence
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_RW+0x1dc0a, %rsi
add $21744, %r15
vmovaps (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'45': 61, '49': 775, '00': 131, '47': 4}
00 49 00 49 49 45 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 00 49 49 49 49 49 00 00 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 00 49 49 49 49 00 49 00 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 45 49 45 00 45 49 49 49 49 49 00 49 49 49 00 49 49 00 00 49 49 00 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 00 00 49 00 45 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 00 49 49 45 49 49 49 00 45 49 49 49 49 49 49 49 49 49 45 49 00 49 49 49 45 49 49 49 49 49 49 49 00 49 45 49 49 47 49 49 49 49 49 49 49 00 00 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 00 00 49 45 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 00 45 45 47 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 45 49 49 00 00 49 00 00 49 49 49 49 49 00 49 49 00 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 45 45 45 45 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 45 00 49 49 49 49 45 00 49 49 00 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 45 00 49 45 45 49 49 49 49 00 49 00 49 49 49 00 45 49 49 49 49 49 49 49 49 49 49 49 00 49 00 00 49 45 49 49 49 49 49 49 49 49 49 45 00 49 49 49 49 49 00 49 49 00 00 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 45 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 45 00 49 00 49 49 49 49 49 49 49 49 49 49 49 00 45 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 00 45 00 00 49 49 49 49 45 00 45 00 49 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 49 49 49 49 45 49 49 49 49 45 49 47 49 49 49 49 49 49 45 49 45 49 49 49 49 45 49 49 00 45 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 49 00 00 49 49 49 49 49 45 49 49 49 00 49 49 49 49 00 49 49 49 49 00 49 49 00 49 49 49 49 49 00 49 00 49 49 49 49 49 00 49 49 00 49 45 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 45 00 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 45 49 49 00 45 49 47 49 49 49 49 49 49 00 49 49 49 49 49 00 00 45 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49
*/
