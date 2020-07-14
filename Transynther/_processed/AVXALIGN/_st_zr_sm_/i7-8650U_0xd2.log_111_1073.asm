.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa02b, %r9
nop
nop
xor $63115, %rbx
movups (%r9), %xmm7
vpextrq $1, %xmm7, %rax
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x3f4b, %rsi
lea addresses_D_ht+0x8f9b, %rdi
nop
and %r15, %r15
mov $125, %rcx
rep movsw
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x1a04b, %rcx
nop
nop
nop
add $64192, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x1842b, %rsi
lea addresses_WC_ht+0xe803, %rdi
nop
sub %rax, %rax
mov $24, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1a22b, %rcx
nop
sub $17386, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
and $500, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WC+0x1d62b, %r12
nop
add %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r12)

// Exception!!!
nop
nop
mov (0), %rsi
nop
nop
nop
nop
sub $5652, %rbp

// Store
lea addresses_PSE+0x16b6f, %r13
nop
nop
nop
xor $7092, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movntdq %xmm7, (%r13)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
xor $9085, %rbx

// Store
mov $0x79fea00000000a2b, %r11
nop
nop
add $29289, %rbp
movl $0x51525354, (%r11)
add %r12, %r12

// Store
lea addresses_A+0xc4fb, %rbp
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
add %r12, %r12

// Faulty Load
mov $0x79fea00000000a2b, %rbx
nop
nop
nop
nop
add %r12, %r12
movb (%rbx), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 105, '54': 6}
00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
