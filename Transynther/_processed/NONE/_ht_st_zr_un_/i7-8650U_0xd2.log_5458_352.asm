.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xaefb, %rax
nop
nop
nop
nop
and $35284, %rsi
mov (%rax), %rbx
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1baeb, %rsi
lea addresses_UC_ht+0x1a6fb, %rdi
nop
nop
nop
nop
inc %rbp
mov $45, %rcx
rep movsq
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xd83b, %rbp
and $31973, %rbx
mov (%rbp), %rdi
nop
nop
cmp $49308, %rcx
lea addresses_UC_ht+0x1a4e3, %rbx
nop
nop
nop
dec %r13
mov (%rbx), %esi
nop
nop
add $33148, %rbp
lea addresses_A_ht+0x385f, %rbx
clflush (%rbx)
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rbx)
nop
dec %rbp
lea addresses_normal_ht+0x1dd4b, %rbx
nop
and $5456, %rbp
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xecfb, %rsi
lea addresses_WC_ht+0x112fb, %rdi
dec %rax
mov $60, %rcx
rep movsl
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x784b, %rbx
nop
nop
cmp $52230, %rbp
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_normal+0x7bc1, %rcx
nop
dec %r14
movw $0x5152, (%rcx)
add %r9, %r9

// Store
lea addresses_D+0x1a38f, %r14
dec %r11
movw $0x5152, (%r14)
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x6059f4000000003b, %r11
nop
dec %rax
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
add $28842, %r9

// Faulty Load
lea addresses_WC+0x76fb, %r9
nop
add %r13, %r13
mov (%r9), %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 4899, '44': 32, 'ff': 405, '49': 5, '10': 55, '45': 42, '48': 7, 'dd': 2, '52': 9, '30': 1, '47': 1}
00 00 00 00 00 00 44 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 ff 00 ff 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 ff 00 00 00 00 00 00 ff 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 10 ff 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 45 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 44 00 ff 00 00 ff 44 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 00 ff 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 ff 00 00 00 00 00 00 00 00 10 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 10 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 ff 48 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 10 00 ff 00 00 ff 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 ff 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 45 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00
*/
