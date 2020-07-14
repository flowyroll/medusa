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
lea addresses_A_ht+0x1cc84, %rsi
lea addresses_UC_ht+0x18d6c, %rdi
nop
nop
nop
add $45997, %rbp
mov $20, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x14c06, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp $50876, %rbp
mov (%r15), %r8
nop
nop
inc %r15
lea addresses_WC_ht+0x17284, %r8
nop
nop
nop
nop
add %r13, %r13
mov (%r8), %r15
nop
sub $17985, %rbp
lea addresses_normal_ht+0x1dd84, %rcx
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %edi
nop
nop
nop
nop
nop
sub $13588, %rbp
lea addresses_normal_ht+0xef50, %rsi
lea addresses_A_ht+0xba84, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $70, %rcx
rep movsl
nop
nop
nop
and $5959, %r8
lea addresses_D_ht+0x126a8, %r15
nop
nop
nop
nop
sub $49770, %rdi
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x41f2, %rsi
lea addresses_WT_ht+0x15c04, %rdi
sub %r13, %r13
mov $74, %rcx
rep movsl
nop
nop
nop
dec %r13
lea addresses_D_ht+0x484, %rsi
lea addresses_normal_ht+0x1510d, %rdi
dec %r15
mov $90, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x11684, %r15
nop
nop
nop
nop
cmp $3121, %r8
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
add $37286, %rcx
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
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0x1fe08, %r12
nop
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
xor $20689, %r9

// Load
lea addresses_RW+0x15184, %rbx
nop
nop
nop
sub %r9, %r9
mov (%rbx), %r12
sub $0, %rcx

// Store
lea addresses_PSE+0x1df09, %r9
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_RW+0x2284, %r12
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movntdq %xmm5, (%r12)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0x7831b40000000284, %r11
nop
nop
xor %r9, %r9
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
mov $0x7831b40000000284, %rcx
nop
nop
nop
sub $8125, %rdx
movb (%rcx), %r9b
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'58': 687, '54': 20957, '00': 185}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 58 54 54 54 54 54 54 54 54 54 58 54 54 54 54 58 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
