.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x23b4, %r10
nop
nop
nop
nop
nop
and $6687, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%r10)
nop
add $63395, %rsi
lea addresses_WT_ht+0x33c, %rsi
lea addresses_A_ht+0x1d68c, %rdi
nop
nop
inc %r14
mov $34, %rcx
rep movsw
nop
xor $59581, %r14
lea addresses_UC_ht+0x1d2d8, %rsi
lea addresses_normal_ht+0xa86c, %rdi
nop
nop
nop
nop
xor $18787, %rax
mov $31, %rcx
rep movsq
nop
nop
nop
nop
cmp $31271, %rdi
lea addresses_WT_ht+0x5ecc, %rsi
lea addresses_D_ht+0x3efc, %rdi
nop
sub %r10, %r10
mov $64, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xba44, %r14
nop
nop
add $24308, %r10
mov (%r14), %rax
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x12090, %rcx
clflush (%rcx)
nop
xor $60839, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rcx)
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0x6a60830000000c8c, %rdx
nop
nop
nop
sub $50375, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
add $21834, %rdx

// Store
lea addresses_A+0x9dcc, %r14
add %r9, %r9
movl $0x51525354, (%r14)
nop
nop
xor $16777, %r9

// Store
lea addresses_WC+0x374c, %rdx
cmp $15407, %rdi
movb $0x51, (%rdx)
nop
nop
nop
sub $65525, %r14

// Store
lea addresses_A+0x8f10, %r9
nop
nop
nop
nop
and $43117, %rdx
movw $0x5152, (%r9)
nop
and %rbx, %rbx

// Faulty Load
mov $0x6a60830000000c8c, %rdx
nop
nop
dec %r10
mov (%rdx), %di
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'38': 1, 'f4': 1, '58': 223, 'cc': 1, '00': 58}
58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 cc 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 00 58 38 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 f4 58 58 58 00 58 00 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00
*/
