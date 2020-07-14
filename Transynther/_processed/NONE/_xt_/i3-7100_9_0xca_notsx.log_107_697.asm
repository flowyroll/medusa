.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x663c, %rdx
dec %rbp
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1574f, %r11
nop
and $19308, %r10
movw $0x6162, (%r11)
add %rbp, %rbp
lea addresses_normal_ht+0x3708, %rdx
nop
nop
nop
nop
nop
cmp $35686, %rbp
mov (%rdx), %r11d
nop
xor $59944, %r10
lea addresses_WC_ht+0x1075c, %rcx
nop
nop
nop
sub $22647, %r8
mov (%rcx), %ebp
add %r8, %r8
lea addresses_WT_ht+0x49fc, %rsi
lea addresses_A_ht+0x103fc, %rdi
cmp $15290, %r10
mov $118, %rcx
rep movsq
nop
nop
xor $37756, %rsi
lea addresses_WC_ht+0xcbfc, %r14
nop
cmp $31419, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x5f0e, %r10
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %r10
vmovntdq %ymm2, (%r10)
nop
xor $35440, %rbp
lea addresses_WT_ht+0x9fc, %rdi
nop
sub %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
add %r11, %r11
lea addresses_WT_ht+0x14ffc, %rsi
nop
add %r11, %r11
mov (%rsi), %r8
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x147d4, %rsi
lea addresses_A_ht+0xcbfc, %rdi
nop
xor $8655, %r14
mov $48, %rcx
rep movsq
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x85fc, %r14
nop
add $37984, %rbp
movb $0x61, (%r14)
nop
nop
inc %r11
lea addresses_A_ht+0x15321, %rcx
nop
nop
nop
inc %rbp
mov (%rcx), %dx
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1367c, %rsi
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%rsi), %rcx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x191e4, %rbp
nop
nop
nop
nop
and $32499, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %rbp
movntdq %xmm1, (%rbp)
nop
xor $18217, %r10
lea addresses_WT_ht+0x1ebfc, %r10
nop
nop
nop
nop
nop
and $33138, %rcx
movw $0x6162, (%r10)
nop
nop
nop
and $28514, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rsi

// Store
mov $0x4d9db0000000d5c, %r9
nop
nop
add $42924, %rbx
movw $0x5152, (%r9)
nop
nop
nop
xor $15464, %r9

// Load
lea addresses_WT+0x12bdf, %rbx
inc %r14
movb (%rbx), %cl
nop
nop
nop
nop
and $9221, %r8

// Load
lea addresses_PSE+0x1bfc, %rcx
nop
nop
nop
nop
dec %rsi
mov (%rcx), %ebx
nop
nop
cmp $58571, %rsi

// Load
lea addresses_PSE+0x1bfc, %r12
nop
nop
nop
nop
nop
add $62280, %rbx
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
nop
nop
and $61662, %r12

// Faulty Load
lea addresses_PSE+0x1bfc, %rcx
nop
and $26861, %r8
movb (%rcx), %r14b
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'33': 107}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
