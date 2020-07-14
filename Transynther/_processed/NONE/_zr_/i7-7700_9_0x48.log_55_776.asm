.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1a41a, %rsi
lea addresses_WC_ht+0x8706, %rdi
clflush (%rdi)
nop
nop
and $28726, %r14
mov $37, %rcx
rep movsl
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
mov $0x6bf5610000000c3e, %r8
dec %r11
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_A+0x13c56, %rax
clflush (%rax)
nop
nop
nop
nop
sub $7392, %r9
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
mov (0), %r12
nop
nop
cmp %r11, %r11

// Store
lea addresses_A+0x122ae, %rax
nop
nop
inc %r8
mov $0x5152535455565758, %r12
movq %r12, (%rax)
xor %rdx, %rdx

// Store
mov $0x75896300000005d6, %r8
clflush (%r8)
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r8)
sub $35340, %r11

// Store
mov $0xe46, %rdx
nop
sub $40309, %r12
movl $0x51525354, (%rdx)
dec %r8

// Store
mov $0x359447000000023e, %r11
nop
nop
nop
nop
nop
cmp $24268, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
nop
nop
xor $56844, %r12

// Faulty Load
lea addresses_A+0x6206, %r9
add %r11, %r11
mov (%r9), %dx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
