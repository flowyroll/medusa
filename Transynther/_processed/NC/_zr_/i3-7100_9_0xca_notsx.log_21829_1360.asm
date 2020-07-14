.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf7b, %rbx
and %r15, %r15
movl $0x61626364, (%rbx)
inc %r12
lea addresses_A_ht+0x11a50, %r10
dec %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r10)
nop
nop
inc %r15
lea addresses_WT_ht+0x16408, %r15
nop
nop
nop
nop
nop
add $9832, %r14
mov (%r15), %r12w
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x1029c, %r14
nop
nop
dec %rsi
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x10c50, %r12
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
dec %r12
lea addresses_normal_ht+0xf640, %r10
nop
nop
nop
nop
nop
sub $30652, %r15
movups (%r10), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
cmp $10350, %r12
lea addresses_D_ht+0x17d78, %rsi
lea addresses_WT_ht+0x195d0, %rdi
dec %rbx
mov $104, %rcx
rep movsq
nop
nop
cmp $41091, %r10
lea addresses_D_ht+0x12c00, %rdi
nop
nop
cmp $41978, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x101d0, %rcx
nop
nop
nop
dec %rbx
movb (%rcx), %r12b
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x181d0, %rbx
clflush (%rbx)
nop
nop
nop
and $51675, %rsi
movb (%rbx), %r12b
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1bdd0, %r15
nop
nop
nop
nop
cmp $23650, %rdi
movl $0x61626364, (%r15)
xor %r12, %r12
lea addresses_normal_ht+0x21d0, %rsi
lea addresses_UC_ht+0x17350, %rdi
add %r12, %r12
mov $13, %rcx
rep movsb
sub %rdi, %rdi
lea addresses_UC_ht+0x92dc, %rsi
lea addresses_UC_ht+0x1e9d0, %rdi
nop
nop
nop
nop
nop
add $52404, %r15
mov $115, %rcx
rep movsb
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xe7d0, %r14
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_UC+0x28b0, %rsi
nop
and $52302, %r10
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rcx
cmp $35068, %r14

// Load
lea addresses_D+0x19156, %rdx
nop
and $35585, %rcx
mov (%rdx), %r14d

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0x17d0, %rcx
cmp $33424, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_PSE+0x23d0, %r14
nop
nop
nop
and %r15, %r15
movb $0x51, (%r14)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x12b50, %rcx
nop
xor $53860, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
dec %rcx

// Load
lea addresses_WC+0x3350, %rcx
sub %r14, %r14
mov (%rcx), %edx
nop
nop
nop
nop
nop
xor $18763, %r15

// Store
lea addresses_WC+0x2d0, %rsi
nop
nop
nop
nop
nop
add $39149, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
inc %r14

// Faulty Load
mov $0x53a2860000000dd0, %r15
nop
nop
nop
inc %rdx
mov (%r15), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
