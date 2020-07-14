.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xb517, %rsi
lea addresses_UC_ht+0xda17, %rdi
nop
nop
nop
nop
add $50487, %rdx
mov $21, %rcx
rep movsw
add %rsi, %rsi
lea addresses_UC_ht+0x7b17, %r8
nop
nop
nop
nop
nop
and $11950, %rdx
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
add $13001, %r14
lea addresses_WT_ht+0x4787, %r8
dec %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r8
movaps %xmm2, (%r8)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x193f7, %r8
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r8)
nop
nop
xor $45216, %rsi
lea addresses_WC_ht+0x17097, %r8
clflush (%r8)
nop
nop
nop
and %r10, %r10
movups (%r8), %xmm0
vpextrq $0, %xmm0, %rsi
nop
sub $27873, %r14
lea addresses_A_ht+0xd417, %r8
nop
xor $42144, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x717, %rsi
nop
nop
add %r10, %r10
movb (%rsi), %cl
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x12727, %rsi
lea addresses_normal_ht+0xbb17, %rdi
xor $23993, %r11
mov $13, %rcx
rep movsq
add $24806, %r14
lea addresses_normal_ht+0xd43, %rsi
lea addresses_UC_ht+0x16217, %rdi
nop
and %r11, %r11
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
and $48052, %r11
lea addresses_UC_ht+0x1ab17, %rsi
lea addresses_WT_ht+0x1b83f, %rdi
clflush (%rdi)
cmp $57191, %r8
mov $41, %rcx
rep movsq
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x76b7, %r11
nop
nop
nop
cmp $24134, %rax
movw $0x5152, (%r11)
nop
nop
nop
inc %rdi

// Store
lea addresses_PSE+0x9f57, %r9
nop
nop
nop
xor $52901, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
sub %rax, %rax

// Load
mov $0xab7, %rbx
nop
nop
nop
nop
xor $8282, %r14
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r9
nop
sub %rax, %rax

// Faulty Load
lea addresses_A+0x2317, %rax
nop
nop
nop
sub $49001, %r11
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'48': 4, '44': 17801, 'c5': 1, '00': 4023}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 00 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 00 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 00 44 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 00 00 44 00 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 00 00 00 00 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 00 00 44 00 44 00 00 00 00 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44
*/
