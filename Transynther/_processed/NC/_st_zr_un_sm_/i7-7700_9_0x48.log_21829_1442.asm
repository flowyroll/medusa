.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a09b, %r8
nop
nop
nop
cmp %r13, %r13
mov (%r8), %rcx
nop
nop
and $53009, %r15
lea addresses_A_ht+0x17b57, %r8
nop
nop
nop
nop
nop
cmp $28771, %r11
movb (%r8), %bl
nop
sub %r11, %r11
lea addresses_A_ht+0x695b, %r15
nop
nop
dec %r9
mov (%r15), %ecx
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x7553, %r9
nop
dec %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r9)
lfence
lea addresses_WC_ht+0x1609b, %r8
nop
nop
nop
dec %rbx
mov (%r8), %r15d
nop
nop
xor $52841, %r8
lea addresses_UC_ht+0xb69b, %rcx
nop
sub %r13, %r13
movw $0x6162, (%rcx)
nop
nop
nop
dec %r8
lea addresses_A_ht+0x86d5, %r13
nop
cmp $12773, %r11
mov (%r13), %r8w
nop
nop
and %r13, %r13
lea addresses_WT_ht+0xd9fb, %rsi
lea addresses_D_ht+0x188db, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $22, %rcx
rep movsq
and $9735, %r13
lea addresses_UC_ht+0xf293, %r15
add %rsi, %rsi
mov (%r15), %r13d
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0x37d4af000000089b, %r9
cmp $49196, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
xor $39195, %r10

// Faulty Load
mov $0x37d4af000000089b, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r10), %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'58': 6025, '5f': 15713, '00': 91}
5f 58 58 58 5f 58 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 58 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 58 58 58 5f 58 5f 58 58 5f 58 5f 5f 58 58 5f 58 58 5f 5f 58 58 5f 5f 5f 5f 5f 58 58 58 58 58 58 58 58 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 58 5f 5f 58 5f 58 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 58 58 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 58 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 58 5f 58 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 58 58 58 5f 5f 58 58 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 58 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 5f 58 5f 58 58 5f 5f 58 5f 58 5f 5f 58 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 5f 58 58 5f 5f 5f 58 58 5f 58 5f 5f 58 58 5f 5f 5f 58 58 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 58 5f 5f 58 58 5f 58 58 58 58 5f 5f 58 5f 5f 5f 58 58 5f 58 58 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 58 58 58 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 58 5f 5f 58 5f 58 5f 58 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 00 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 58 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 58 58 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 58 5f 58 5f 58 5f 58 58 5f 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 58 58 58 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 58 58 58 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f 5f 58 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f
*/
