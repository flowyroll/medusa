.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19236, %r9
nop
and %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
xor $55447, %r11
lea addresses_UC_ht+0x8ff4, %r9
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x61626364, (%r9)
nop
nop
and $44934, %rcx
lea addresses_UC_ht+0x1e174, %rsi
lea addresses_WC_ht+0x3cf8, %rdi
nop
nop
nop
dec %rbp
mov $70, %rcx
rep movsl
nop
sub $63727, %r11
lea addresses_D_ht+0x1d2bc, %rsi
lea addresses_A_ht+0x2574, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $68, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x16974, %rdi
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
add $48348, %r15
lea addresses_A_ht+0xf974, %rsi
lea addresses_A_ht+0x8574, %rdi
nop
xor %r15, %r15
mov $29, %rcx
rep movsl
nop
nop
nop
xor $49610, %r13
lea addresses_WT_ht+0x7374, %r9
nop
nop
nop
nop
nop
add $53570, %rsi
movl $0x61626364, (%r9)
nop
nop
sub $37425, %rsi
lea addresses_D_ht+0x1d5b4, %rsi
lea addresses_WT_ht+0xe1b4, %rdi
nop
nop
nop
dec %r13
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1b964, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rcx)
add %rdi, %rdi
lea addresses_A_ht+0x11174, %rdi
nop
sub $52206, %r9
mov (%rdi), %r13w
mfence
lea addresses_A_ht+0xb3f4, %rsi
nop
nop
nop
nop
sub $59650, %r15
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
add $38830, %r9
lea addresses_UC_ht+0xdf74, %r9
nop
nop
nop
nop
nop
add $57048, %rsi
mov (%r9), %r15w
nop
xor $23719, %r9
lea addresses_normal_ht+0x6974, %rsi
lea addresses_WT_ht+0xcd74, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $35979, %r15
mov $112, %rcx
rep movsq
and $36254, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0xd0a4, %rdx
nop
nop
nop
xor %r15, %r15
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
and $9025, %rbx

// REPMOV
lea addresses_WT+0x1039a, %rsi
lea addresses_PSE+0x19a74, %rdi
nop
nop
nop
cmp $43042, %r13
mov $77, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_normal+0x4db4, %rdx
clflush (%rdx)
nop
nop
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rdx)
nop
and %rdi, %rdi

// Store
lea addresses_PSE+0xc9f4, %r8
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%r8)
nop
inc %r15

// Store
lea addresses_UC+0x13964, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and $38210, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
sub $36363, %rdx

// Faulty Load
lea addresses_RW+0x1e974, %rcx
nop
nop
nop
nop
nop
inc %rdi
movb (%rcx), %r14b
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
