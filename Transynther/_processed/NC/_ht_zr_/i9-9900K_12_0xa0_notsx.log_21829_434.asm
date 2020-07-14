.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x703, %r14
nop
and $10412, %r8
mov $0x6162636465666768, %r15
movq %r15, (%r14)
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0xef03, %r9
clflush (%r9)
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r9), %r14
add $923, %r9
lea addresses_WC_ht+0xc5cf, %r14
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0xc483, %r15
nop
xor $44186, %rdi
mov (%r15), %r14w
nop
and $63028, %rdx
lea addresses_WT_ht+0xff03, %r15
add $1576, %r10
movw $0x6162, (%r15)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1e703, %r8
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x4a03, %r8
nop
nop
nop
nop
add %r15, %r15
mov (%r8), %r14d
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0xcc03, %r10
nop
cmp $37917, %r9
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
add $19304, %r15
lea addresses_D_ht+0xaf03, %r9
nop
nop
nop
nop
nop
xor $36092, %rdi
movb (%r9), %r10b
nop
dec %r8
lea addresses_WC_ht+0xb803, %rsi
lea addresses_normal_ht+0x3ee3, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0xf903, %rcx
nop
nop
nop
sub $31211, %rdx
mov (%rcx), %r9d
nop
nop
nop
nop
cmp $20443, %r8
lea addresses_WC_ht+0x303, %rdi
nop
nop
and $31297, %rcx
mov (%rdi), %si
sub %r10, %r10
lea addresses_A_ht+0x783, %r8
nop
nop
dec %r9
movb (%r8), %r10b
nop
cmp $50108, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0xf703, %rax
nop
inc %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rax)
nop
cmp $10117, %r9

// Store
lea addresses_RW+0xc303, %r9
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
cmp $55573, %r13

// Faulty Load
mov $0x381cd50000000f03, %r13
nop
and %r11, %r11
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'48': 15657, '00': 6172}
00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 00 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 00 48 00 48 00 48 00 00 48 48 48 00 48 48 48 48 00 48 48 48 48 00 00 00 00 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 00 00 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 00 48 00 48 48 00 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 00 48 48 00 48 48 48 48 00 00 48 48 00 00 48 00 48 00 48 48 00 00 48 00 48 00 48 00 48 48 48 48 00 48 00 48 00 00 00 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 00 48 48 00 00 48 48 00 48 48 00 48 48 48 00 48 48 48 48 00 48 00 48 00 48 48 00 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 00 00 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 48 00 48 48 00 48 00 00 00 48 48 00 00 00 48 48 48 48 48 48 00 48 00 00 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 00 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 00 00 48 00 48 00 48 00 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 00 00 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 00 48 00 48 00 48 00 48 48 48 48 00 48 00 48 00 48 00 48 00 48 48 00 00 48 48 48 48 00 48 00 00 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 00 48 00 48 00 00 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 00 00 48 00 48 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 00 48 48 48 48 00 00 00 48 00 48 48 00 48 00 48 00 48 00 00 00 48 00 48 00 48 00 48 48 00 48 48 00 48 00 00 48 00 48 00 00 00 48
*/
