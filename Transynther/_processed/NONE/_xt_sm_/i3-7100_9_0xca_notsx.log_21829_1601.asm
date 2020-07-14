.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc0f9, %r9
nop
xor %r15, %r15
movb (%r9), %bl
nop
nop
xor $44203, %rbp
lea addresses_WT_ht+0x14ef9, %rcx
nop
nop
add $51555, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x8c73, %r15
nop
nop
nop
nop
nop
and $20385, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %r15
movntdq %xmm0, (%r15)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x1481d, %r15
xor $44693, %rcx
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rbx
nop
sub $10659, %rbp
lea addresses_UC_ht+0x2909, %r11
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
and $54594, %rcx
lea addresses_A_ht+0x14c79, %rbp
dec %r11
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x18d79, %rbp
clflush (%rbp)
nop
nop
nop
xor %r13, %r13
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
nop
and %r9, %r9
lea addresses_A_ht+0x1cf9, %r9
clflush (%r9)
nop
nop
nop
nop
nop
inc %rcx
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rbp
nop
inc %r13
lea addresses_WC_ht+0x1c179, %rsi
lea addresses_WC_ht+0x11019, %rdi
clflush (%rsi)
and %rbp, %rbp
mov $29, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1a4f9, %rsi
lea addresses_normal_ht+0x177f9, %rdi
clflush (%rdi)
nop
nop
xor %r11, %r11
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $5785, %rbp
lea addresses_A_ht+0x12639, %rsi
add $50675, %rbx
mov (%rsi), %ebp
nop
nop
nop
nop
nop
add $24878, %rbx
lea addresses_A_ht+0x3261, %rsi
and $22642, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x8f9, %rsi
lea addresses_normal_ht+0x19af9, %rdi
nop
nop
nop
nop
dec %r11
mov $101, %rcx
rep movsb
sub %rbx, %rbx
lea addresses_normal_ht+0x101b1, %rsi
lea addresses_D_ht+0x1e6f9, %rdi
nop
nop
sub $5122, %rbp
mov $60, %rcx
rep movsw
nop
nop
nop
add $8202, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x32b5, %rcx
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
cmp %r12, %r12

// Load
lea addresses_PSE+0xe739, %r8
nop
nop
nop
nop
add $42952, %r12
mov (%r8), %r15d
nop
nop
nop
cmp $25031, %r15

// Store
mov $0xc91, %rdx
nop
inc %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
dec %rdx

// Store
lea addresses_WT+0x127f9, %r9
nop
sub %r15, %r15
movb $0x51, (%r9)
nop
nop
xor %r15, %r15

// Store
lea addresses_normal+0x124f9, %rcx
nop
nop
nop
nop
nop
xor $15115, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
add $6447, %rcx

// Store
lea addresses_A+0x1cb7d, %r8
nop
nop
nop
nop
nop
and $7983, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r8)
nop
inc %r8

// Store
lea addresses_US+0xf56f, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x51, (%rdi)
nop
nop
xor %r15, %r15

// Store
lea addresses_UC+0x1a199, %rdi
nop
add $60543, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_normal+0x124f9, %rdi
nop
nop
nop
nop
nop
xor $42281, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
and $18753, %rdx

// Store
lea addresses_normal+0x124f9, %r8
nop
nop
nop
nop
nop
and $65071, %rdi
movw $0x5152, (%r8)
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_normal+0x124f9, %rdx
nop
nop
nop
nop
sub $28680, %rdi
movb (%rdx), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
