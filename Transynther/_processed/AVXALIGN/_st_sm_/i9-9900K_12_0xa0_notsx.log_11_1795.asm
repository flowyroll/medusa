.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd6d4, %r11
nop
nop
nop
add %r8, %r8
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rax
nop
and $25693, %rdi
lea addresses_normal_ht+0x123f1, %rsi
nop
nop
add %rdi, %rdi
mov (%rsi), %r10d
nop
nop
nop
nop
nop
add $14495, %rsi
lea addresses_WC_ht+0xb194, %r11
nop
add %rdx, %rdx
movb (%r11), %al
nop
nop
dec %rdx
lea addresses_D_ht+0x1d057, %r8
nop
nop
xor %r11, %r11
mov (%r8), %esi
dec %rax
lea addresses_WC_ht+0x130ed, %r8
nop
nop
xor %r10, %r10
movl $0x61626364, (%r8)
xor $42994, %rdi
lea addresses_D_ht+0x117cb, %r11
clflush (%r11)
nop
add $18466, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x19d7, %rax
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
xor $34419, %rsi
lea addresses_WT_ht+0xfa37, %rdx
clflush (%rdx)
add %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
cmp $38882, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_D+0x1c237, %r12
nop
add %r13, %r13
movb (%r12), %r8b
nop
nop
xor %r8, %r8

// Load
lea addresses_D+0x10237, %r12
nop
nop
nop
add $875, %rcx
mov (%r12), %r13w
nop
nop
nop
nop
nop
and $52133, %r8

// Store
mov $0x20a0de0000000ca7, %r8
nop
nop
nop
nop
and $26149, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movntdq %xmm5, (%r8)
sub $24179, %r12

// Store
mov $0x57f, %r8
nop
inc %r13
movl $0x51525354, (%r8)
xor $26860, %rbp

// Store
lea addresses_WT+0x17d37, %rdx
sub $8299, %r8
movw $0x5152, (%rdx)
nop
nop
nop
nop
and %rbp, %rbp

// Load
mov $0xe37, %rcx
nop
nop
nop
nop
add %r8, %r8
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_UC+0x8037, %r13
nop
inc %rdx
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
add $37560, %rdx

// Store
lea addresses_D+0x1c237, %rbp
nop
nop
nop
nop
nop
and $23721, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
xor $48490, %rdi

// Store
mov $0x437, %r8
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%r8)
nop
dec %rbp

// Faulty Load
lea addresses_D+0x1c237, %r12
clflush (%r12)
nop
nop
nop
nop
add $3561, %r8
movb (%r12), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'58': 11}
58 58 58 58 58 58 58 58 58 58 58
*/
