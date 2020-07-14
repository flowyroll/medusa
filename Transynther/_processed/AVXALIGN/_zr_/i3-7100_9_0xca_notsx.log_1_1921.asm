.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1ed2, %r12
nop
nop
nop
inc %r11
mov (%r12), %di
cmp %r9, %r9
lea addresses_D_ht+0xb6d2, %rsi
lea addresses_normal_ht+0x58b2, %rdi
clflush (%rdi)
xor %rdx, %rdx
mov $50, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x196d2, %rsi
nop
nop
nop
nop
nop
xor $52821, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x19492, %rsi
lea addresses_WC_ht+0x591e, %rdi
nop
nop
nop
nop
dec %r13
mov $60, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xa6d2, %r12
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
cmp $42169, %r12
lea addresses_D_ht+0x111d4, %rdx
nop
nop
nop
cmp $7187, %r12
mov (%rdx), %esi
nop
nop
inc %rdx
lea addresses_WC_ht+0x12e2a, %rsi
lea addresses_WT_ht+0xfed2, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub %r9, %r9
mov $86, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x26d2, %r11
cmp %r13, %r13
mov (%r11), %si
and %rcx, %rcx
lea addresses_UC_ht+0x16252, %rsi
lea addresses_A_ht+0x14fd2, %rdi
nop
nop
nop
xor $8039, %r12
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1a078, %r13
xor $63678, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
and $64614, %rcx
lea addresses_UC_ht+0x12b52, %r12
nop
nop
cmp %r11, %r11
mov (%r12), %ecx
nop
nop
nop
nop
sub $17045, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x3ece, %r13
nop
nop
nop
nop
xor $25355, %r15
movw $0x5152, (%r13)
nop
nop
cmp $295, %r13

// Store
lea addresses_UC+0x11ed2, %rdi
nop
sub %r9, %r9
movw $0x5152, (%rdi)
nop
add $36688, %r13

// REPMOV
lea addresses_A+0x1f2d2, %rsi
lea addresses_A+0x18ad2, %rdi
nop
nop
and %r9, %r9
mov $41, %rcx
rep movsb
nop
nop
add %r11, %r11

// Store
lea addresses_normal+0x11fd2, %r9
nop
nop
nop
nop
nop
and $31793, %r15
movb $0x51, (%r9)
nop
and $42994, %r9

// Store
lea addresses_D+0x116d2, %r9
nop
cmp %rax, %rax
movb $0x51, (%r9)
add %rdi, %rdi

// Load
mov $0x6425bc0000000232, %rax
nop
cmp %r13, %r13
movb (%rax), %r10b
nop
add %r9, %r9

// Store
mov $0x2e3fe40000000ed2, %r11
nop
nop
nop
nop
nop
and $1293, %r9
mov $0x5152535455565758, %r13
movq %r13, (%r11)
xor %r9, %r9

// Store
lea addresses_UC+0xe752, %r11
sub %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r11)
nop
nop
sub $46058, %rax

// Store
lea addresses_WC+0x3ed2, %r15
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
add %rax, %rax

// Load
mov $0x57e, %r11
sub $15930, %rsi
mov (%r11), %r13
nop
nop
sub %rcx, %rcx

// Store
mov $0x582f0e0000000fd2, %rcx
nop
nop
nop
nop
and $22472, %r11
movb $0x51, (%rcx)
nop
add %r15, %r15

// Load
lea addresses_A+0x1bbc2, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdi), %r15w
nop
nop
xor $27142, %rsi

// Store
mov $0xc42, %r13
and $47875, %rsi
movb $0x51, (%r13)
nop
nop
nop
xor $24426, %rax

// Faulty Load
mov $0x2e3fe40000000ed2, %r10
nop
nop
nop
nop
nop
sub $61870, %rcx
mov (%r10), %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
