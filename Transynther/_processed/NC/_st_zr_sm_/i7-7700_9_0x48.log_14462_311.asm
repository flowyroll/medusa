.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1c155, %r9
clflush (%r9)
nop
nop
nop
nop
xor %r8, %r8
mov (%r9), %rdi
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x8955, %r11
nop
nop
cmp %rbx, %rbx
mov (%r11), %r9d
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x153e8, %r12
nop
nop
nop
nop
dec %rdx
mov (%r12), %r9d
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x8855, %r9
xor $57864, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r9)
add $52141, %r8
lea addresses_D_ht+0xf691, %rsi
lea addresses_A_ht+0x13055, %rdi
nop
nop
nop
nop
nop
and $52822, %rdx
mov $70, %rcx
rep movsb
nop
nop
add $2496, %rdx
lea addresses_WT_ht+0x115, %rsi
lea addresses_WC_ht+0x5155, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $45, %rcx
rep movsq
nop
nop
nop
nop
add $30232, %r9
lea addresses_WT_ht+0xa155, %rbx
nop
and %r12, %r12
movw $0x6162, (%rbx)
nop
nop
inc %rbx
lea addresses_UC_ht+0x5b75, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rdx), %r11d
nop
nop
nop
nop
xor $18266, %rcx
lea addresses_D_ht+0x8565, %rsi
lea addresses_UC_ht+0xa98d, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $46, %rcx
rep movsb
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdx

// Store
mov $0xe71, %r15
clflush (%r15)
cmp $59742, %rax
movl $0x51525354, (%r15)
nop
nop
sub $48734, %rax

// Load
lea addresses_D+0xaff5, %rdx
nop
nop
nop
nop
xor %r15, %r15
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r14
nop
add %r14, %r14

// Store
mov $0x23b6d20000000955, %rdx
nop
nop
nop
dec %r15
movw $0x5152, (%rdx)
nop
nop
nop
sub $49305, %rax

// Load
lea addresses_D+0x4555, %rdx
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rdx), %r10d
nop
nop
and $7409, %r10

// Store
lea addresses_WC+0x11d55, %r9
inc %r12
movb $0x51, (%r9)
nop
dec %r10

// Store
mov $0x355f7d00000007d5, %r15
nop
nop
nop
and $6829, %r10
movw $0x5152, (%r15)
nop
nop
add $38288, %r10

// Load
lea addresses_WT+0xa3e5, %r14
clflush (%r14)
nop
nop
and $2720, %rdx
mov (%r14), %ax
and $14255, %r14

// Store
lea addresses_WC+0x17555, %r15
nop
nop
and $9987, %rdx
movw $0x5152, (%r15)
nop
nop
nop
add $22353, %rax

// Store
lea addresses_D+0x1da55, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%r9)
nop
add $53674, %rdx

// Faulty Load
mov $0x23b6d20000000955, %r10
nop
nop
sub %r12, %r12
mov (%r10), %r9d
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'52': 12243, '00': 2219}
52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 00 52 52 52 00 00 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 00 52 00 52 52 00 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 00 00 52 52 52 52 00 52 52 00 52 00 52 00 52 00 52 52 00 52 52 00 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 00 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 00 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 00 00 52 52 52 00 52 00 52 52 52 00 00 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 00 00 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 00 00 00 52 52 52 00 00 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 00 52 00 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 00 52 52 52 52 52 52 00 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 00 00 52 00 52 52 52 52 52 52 00 52 00 52 52 52 52
*/
