.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x29e3, %rdx
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
nop
cmp $57731, %rsi
lea addresses_D_ht+0x72e4, %rax
nop
nop
nop
cmp $64080, %r14
movb (%rax), %r15b
nop
nop
dec %rdx
lea addresses_D_ht+0x16690, %rsi
lea addresses_WC_ht+0x1ef44, %rdi
clflush (%rdi)
nop
xor %r15, %r15
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0xf8a8, %rcx
nop
nop
nop
nop
nop
and $45973, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xfeb0, %rsi
cmp $58845, %rdi
movw $0x6162, (%rsi)
nop
nop
inc %rdx
lea addresses_WT_ht+0xb321, %rsi
lea addresses_UC_ht+0x1a040, %rdi
sub %r15, %r15
mov $69, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x10de4000000003b0, %r11
nop
nop
inc %rcx
movw $0x5152, (%r11)
cmp %r15, %r15

// Store
lea addresses_UC+0x1930, %r15
xor %rdi, %rdi
movw $0x5152, (%r15)
cmp $34778, %r10

// Store
lea addresses_D+0xd030, %rdi
nop
nop
dec %r12
movb $0x51, (%rdi)
nop
nop
nop
nop
xor $23491, %r10

// Load
lea addresses_PSE+0x108f8, %r11
nop
nop
nop
xor $521, %rsi
mov (%r11), %r15w
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_D+0x18930, %r15
nop
nop
nop
and %rcx, %rcx
mov (%r15), %edi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'36': 75}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
