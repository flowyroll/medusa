.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x187b0, %rsi
lea addresses_UC_ht+0x76e, %rdi
nop
nop
cmp $56562, %r15
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $39416, %r10
lea addresses_WT_ht+0x25ee, %r12
nop
dec %r11
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
add $45159, %r10
lea addresses_WT_ht+0x1cb2e, %r11
clflush (%r11)
sub $16237, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm3
and $0xffffffffffffffc0, %r11
vmovaps %ymm3, (%r11)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x14cee, %rsi
lea addresses_WC_ht+0xbd20, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $56, %rcx
rep movsw
sub $34352, %rdi
lea addresses_normal_ht+0xc5ee, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and $14736, %rdi
movb $0x61, (%r10)
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_WT+0xdd6e, %r15
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r15)
nop
xor $33443, %r12

// Store
lea addresses_RW+0x5eee, %r12
clflush (%r12)
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x1fb96, %r12
sub $51086, %r13
movl $0x51525354, (%r12)
sub $3784, %rdx

// Store
lea addresses_A+0x1b41e, %rbp
nop
sub %rcx, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_RW+0x5eee, %rdx
nop
nop
nop
add %rbp, %rbp
movb (%rdx), %r15b
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 203}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
