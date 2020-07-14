.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17fbf, %r10
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
add %rbx, %rbx
lea addresses_UC_ht+0xc1a3, %r12
nop
nop
nop
nop
add $28949, %r11
movb $0x61, (%r12)
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xa343, %rsi
lea addresses_WT_ht+0x2da3, %rdi
clflush (%rdi)
and %r11, %r11
mov $81, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x14a7f, %rsi
lea addresses_D_ht+0x1c803, %rdi
nop
nop
cmp %r11, %r11
mov $106, %rcx
rep movsq
sub %rbp, %rbp
lea addresses_WC_ht+0xfe3b, %rdi
nop
nop
nop
add $21318, %r11
mov (%rdi), %ecx
nop
nop
add $51504, %rsi
lea addresses_WC_ht+0x1111d, %rcx
lfence
movw $0x6162, (%rcx)
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WT+0xfc03, %rbx
nop
xor %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
add $53154, %rcx

// Faulty Load
lea addresses_WT+0xfc03, %rcx
clflush (%rcx)
and %r12, %r12
movaps (%rcx), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'45': 19, '44': 20545, '00': 1265}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 00 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 45 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 45 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 45 44 44 44 45
*/
