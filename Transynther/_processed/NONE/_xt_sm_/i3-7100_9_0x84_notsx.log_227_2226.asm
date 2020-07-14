.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rdx
push %rsi
lea addresses_WT_ht+0xe19c, %rdx
nop
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xa094, %rcx
nop
xor %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp $31744, %rdi

// Store
lea addresses_RW+0x185c9, %r10
nop
inc %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
sub $31797, %rbx

// Store
lea addresses_PSE+0x1e73c, %rbx
nop
nop
nop
nop
xor $34880, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
cmp $56215, %rcx

// Store
lea addresses_D+0xb9b4, %rdx
clflush (%rdx)
cmp $24707, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
and $45623, %rbx

// Load
lea addresses_WC+0x8bfc, %rcx
nop
cmp $14636, %rbx
movb (%rcx), %dl
cmp $35933, %rbx

// Store
lea addresses_PSE+0x401c, %r10
and %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
dec %rdx

// Store
lea addresses_A+0x10c18, %r8
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
xor $38582, %r12

// Store
lea addresses_normal+0x1f664, %r8
nop
nop
cmp $1284, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r8)
nop
nop
and $47340, %rdi

// Store
mov $0x16597a00000004bc, %r10
sub $13538, %rcx
movl $0x51525354, (%r10)
and %rdi, %rdi

// Store
lea addresses_PSE+0x1c13c, %r8
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%r8)
nop
nop
nop
inc %rbx

// Store
lea addresses_RW+0x1c93c, %r8
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r8)
xor %rcx, %rcx

// Faulty Load
lea addresses_RW+0x1c93c, %rcx
nop
nop
nop
nop
nop
dec %r8
mov (%rcx), %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 227}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
