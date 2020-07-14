.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc7fc, %r8
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r8), %r13w
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1e720, %rsi
lea addresses_WT_ht+0x1c050, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
add $41904, %r15
mov $38, %rcx
rep movsw
nop
sub $27880, %rbp
lea addresses_A_ht+0xf520, %rsi
lea addresses_normal_ht+0x49e0, %rdi
nop
nop
nop
sub %r8, %r8
mov $118, %rcx
rep movsb
cmp $3434, %rcx
lea addresses_WT_ht+0x9ea0, %r15
nop
nop
nop
nop
nop
xor $9546, %r8
movb $0x61, (%r15)
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x11a00, %rsi
lea addresses_A_ht+0xcd20, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $1, %rcx
rep movsw
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x7298, %rsi
lea addresses_WT_ht+0xd7c0, %rdi
nop
nop
nop
nop
add $41950, %r13
mov $64, %rcx
rep movsq
cmp $22250, %r8
lea addresses_D_ht+0x15120, %r15
nop
nop
nop
nop
cmp $2255, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x11820, %r12
nop
nop
nop
sub $21019, %rcx
movb (%r12), %dl
xor %r12, %r12

// REPMOV
lea addresses_A+0x4de0, %rsi
lea addresses_WC+0x101a0, %rdi
inc %r8
mov $82, %rcx
rep movsb
xor %rcx, %rcx

// Store
lea addresses_PSE+0x7520, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%rcx)
cmp $8157, %rdi

// REPMOV
lea addresses_normal+0xf120, %rsi
lea addresses_WT+0xd520, %rdi
nop
nop
sub $39956, %r12
mov $64, %rcx
rep movsq
nop
nop
inc %rdx

// Load
mov $0xb20, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %cx
nop
nop
dec %rsi

// Store
lea addresses_A+0x196b0, %rdx
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdx)

// Exception!!!
nop
mov (0), %rsi
nop
nop
and $2170, %r12

// Store
mov $0x9de, %r10
nop
nop
xor $21051, %rdx
movw $0x5152, (%r10)
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_D+0xf920, %r8
xor %rdx, %rdx
movb (%r8), %r12b
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'36': 37}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
