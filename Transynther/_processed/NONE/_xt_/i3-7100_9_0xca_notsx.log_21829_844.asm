.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d8b, %rax
clflush (%rax)
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rax)
nop
nop
nop
add $59658, %rsi
lea addresses_D_ht+0x9f0b, %r9
nop
sub %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
add $54947, %r12
lea addresses_WT_ht+0x1bd0b, %rsi
lea addresses_normal_ht+0x1e3bb, %rdi
nop
nop
nop
nop
and $7836, %r8
mov $22, %rcx
rep movsb
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x7ecb, %rsi
lea addresses_UC_ht+0x1b38b, %rdi
nop
nop
nop
and %r12, %r12
mov $54, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xcf0b, %rsi
lea addresses_D_ht+0x10bad, %rdi
nop
nop
nop
cmp $53869, %r12
mov $91, %rcx
rep movsw
cmp $14436, %r12
lea addresses_D_ht+0x1313f, %r12
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r12
vmovaps %ymm4, (%r12)
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xe3cb, %rsi
lea addresses_WC_ht+0xe90b, %rdi
clflush (%rsi)
add $16100, %rbx
mov $86, %rcx
rep movsw
nop
nop
nop
nop
sub $33875, %rsi
lea addresses_A_ht+0x5f7f, %r9
cmp %rdi, %rdi
mov (%r9), %eax
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1934b, %r12
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r12)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1701b, %rbx
clflush (%rbx)
nop
inc %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1058b, %rsi
lea addresses_D_ht+0x1eb4b, %rdi
nop
nop
nop
nop
inc %rax
mov $111, %rcx
rep movsq
nop
nop
nop
xor $62568, %rcx
lea addresses_normal_ht+0x17e0b, %r12
nop
nop
nop
nop
sub $38166, %r8
mov (%r12), %eax
nop
nop
cmp $30723, %rsi
lea addresses_WT_ht+0x3b0b, %rsi
lea addresses_A_ht+0xd40b, %rdi
nop
xor %rax, %rax
mov $20, %rcx
rep movsw
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x1c10b, %r13
nop
nop
nop
nop
nop
sub $48263, %r15
mov (%r13), %r11
nop
nop
nop
inc %r11

// REPMOV
lea addresses_UC+0x13d9b, %rsi
lea addresses_WC+0x1d98b, %rdi
sub %r13, %r13
mov $72, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $38134, %r15

// Store
lea addresses_PSE+0x1411b, %r11
clflush (%r11)
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r11)
and %rsi, %rsi

// Store
lea addresses_RW+0xd41b, %r10
nop
nop
inc %rdi
movw $0x5152, (%r10)
cmp $26402, %r10

// Store
lea addresses_PSE+0x920b, %rcx
nop
cmp $63304, %r15
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
sub $49014, %rdi

// Store
lea addresses_WC+0x280b, %rsi
nop
nop
nop
and $49834, %r9
movb $0x51, (%rsi)
nop
nop
nop
cmp $15262, %r11

// Store
lea addresses_normal+0x143b, %r9
cmp $55285, %r13
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add $17998, %r10

// Store
mov $0x333, %rdi
nop
sub $18656, %r13
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
nop
nop
nop
add $43293, %rcx

// Faulty Load
lea addresses_D+0x370b, %r9
nop
nop
nop
xor %r10, %r10
movb (%r9), %r13b
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
