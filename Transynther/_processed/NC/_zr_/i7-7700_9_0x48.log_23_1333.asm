.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12a6e, %rax
nop
nop
nop
inc %rdi
movb $0x61, (%rax)
nop
nop
nop
add $8573, %r8
lea addresses_A_ht+0x1106e, %rsi
lea addresses_A_ht+0x96ee, %rdi
nop
nop
xor %r13, %r13
mov $28, %rcx
rep movsb
sub $22843, %rdi
lea addresses_UC_ht+0x216e, %r12
nop
add $53482, %r8
movw $0x6162, (%r12)
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xe06e, %r12
nop
nop
nop
nop
nop
cmp $28097, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xf9ee, %r13
nop
nop
nop
nop
nop
cmp $29020, %rax
movb $0x61, (%r13)
nop
xor %r13, %r13
lea addresses_normal_ht+0x1c86e, %rax
nop
nop
cmp $50273, %rcx
movl $0x61626364, (%rax)
nop
nop
nop
sub $34718, %rax
lea addresses_A_ht+0x658e, %rdi
nop
nop
cmp $51826, %rsi
mov (%rdi), %ax
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0xc06e, %r12
nop
nop
cmp $62729, %r13
movw $0x6162, (%r12)
nop
sub %r8, %r8
lea addresses_UC_ht+0xa1e3, %r12
nop
nop
nop
nop
nop
xor $63570, %rax
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r13
nop
and $16087, %rsi
lea addresses_normal_ht+0x1b11e, %rdi
nop
nop
nop
nop
nop
mfence
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r12
sub %rsi, %rsi
lea addresses_normal_ht+0x18a6e, %rsi
lea addresses_D_ht+0x12e6e, %rdi
nop
nop
nop
inc %r11
mov $77, %rcx
rep movsb
nop
nop
add $20197, %rdi
lea addresses_WT_ht+0x15f2e, %rcx
nop
nop
add $61446, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub $27150, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_US+0x1927e, %rdx
nop
nop
nop
xor %rcx, %rcx
movb (%rdx), %r11b
nop
nop
add $14669, %r12

// Store
lea addresses_UC+0x886e, %rcx
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rcx)
nop
inc %rcx

// Faulty Load
mov $0x367266000000006e, %rdx
clflush (%rdx)
xor %rbp, %rbp
mov (%rdx), %r12d
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'00': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
