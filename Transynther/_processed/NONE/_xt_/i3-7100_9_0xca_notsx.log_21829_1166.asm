.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d5b0, %rbp
and %rax, %rax
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %r8
nop
sub $23716, %r15
lea addresses_WT_ht+0x1e720, %rsi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rsi
movaps %xmm2, (%rsi)
nop
sub %rbp, %rbp
lea addresses_D_ht+0x1615c, %rsi
nop
nop
nop
dec %r14
mov (%rsi), %ebp
nop
cmp $53952, %r8
lea addresses_A_ht+0xafb0, %rsi
lea addresses_A_ht+0xcbb0, %rdi
nop
dec %r15
mov $125, %rcx
rep movsq
xor $55328, %rbp
lea addresses_normal_ht+0x39b0, %r15
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1c9b0, %r15
nop
nop
nop
nop
sub $7732, %rcx
mov (%r15), %r14
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x29d0, %rsi
nop
nop
nop
nop
xor $1428, %r15
mov (%rsi), %rbp
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x3b80, %rdi
nop
and $43086, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor $20680, %rcx
lea addresses_D_ht+0x1670, %r8
nop
nop
nop
cmp %rbp, %rbp
movups (%r8), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
nop
nop
add $2293, %rsi
lea addresses_normal_ht+0xd6dc, %r14
nop
nop
nop
nop
sub $34022, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x13a08, %rsi
lea addresses_WC_ht+0x11430, %rdi
add $57694, %r14
mov $51, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x1bdb0, %rcx
and $50453, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x13990, %rsi
nop
nop
nop
nop
sub %rbp, %rbp
movb (%rsi), %cl
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x18930, %r8
clflush (%r8)
nop
nop
nop
nop
cmp $24018, %rdi
movb (%r8), %r15b
xor $19450, %r14
lea addresses_UC_ht+0x107d0, %r8
nop
nop
nop
dec %rcx
movl $0x61626364, (%r8)
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rdi
push %rsi

// Load
lea addresses_UC+0xa1b0, %r14
and $47132, %rsi
movups (%r14), %xmm1
vpextrq $0, %xmm1, %r8
lfence

// Store
lea addresses_WT+0x15960, %r11
cmp %r8, %r8
movl $0x51525354, (%r11)
add $28662, %r14

// Store
lea addresses_WC+0x16650, %rdi
lfence
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
xor $38460, %rdi

// Load
lea addresses_D+0x1f1b0, %r8
nop
dec %rsi
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
nop
cmp $53192, %r8

// Load
lea addresses_normal+0x1e020, %r10
nop
nop
add %rsi, %rsi
mov (%r10), %di
nop
nop
cmp $59477, %r11

// Store
lea addresses_D+0x11ba8, %rsi
nop
xor $18415, %rax
movb $0x51, (%rsi)
nop
nop
nop
add $25623, %rax

// Faulty Load
lea addresses_WC+0x1e3b0, %rax
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
