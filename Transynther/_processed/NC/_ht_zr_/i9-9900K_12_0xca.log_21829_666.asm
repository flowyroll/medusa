.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7905, %rsi
lea addresses_D_ht+0xf015, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $81, %rcx
rep movsl
and $29679, %r14
lea addresses_WT_ht+0x183d5, %rbp
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor $29604, %rbp
lea addresses_UC_ht+0xfa05, %rsi
nop
nop
nop
nop
xor $34775, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x14505, %rsi
lea addresses_UC_ht+0x1768d, %rdi
nop
sub $19658, %r9
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
add $27276, %r14
lea addresses_UC_ht+0x3605, %rsi
lea addresses_WC_ht+0x5105, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $122, %rcx
rep movsw
nop
sub %rdi, %rdi
lea addresses_A_ht+0x163a5, %rsi
nop
nop
nop
nop
dec %r11
mov (%rsi), %rbp
nop
nop
nop
nop
add $15882, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xaf85, %r13
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
nop
and %r12, %r12

// Faulty Load
mov $0x2c64e80000000205, %rdx
nop
cmp %rbx, %rbx
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'00': 11828, '48': 10001}
00 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 00 00 00 00 48 48 00 00 48 00 48 48 00 48 00 48 00 00 00 48 00 00 48 00 00 48 00 48 00 00 48 48 00 48 00 00 48 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 48 00 48 48 00 48 00 00 00 48 48 00 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 00 00 48 00 00 48 48 00 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 00 48 00 48 48 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 00 48 00 48 48 00 00 48 00 48 00 48 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 00 48 48 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 48 48 00 48 48 00 48 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 00 48 48 00 48 00 48 48 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 48 00 48 48 00 00 48 00 48 00 00 48 48 00 48 00 00 48 00 48 00 00 00 48 00 48 00 48 00 48 48 00 48 00 48 00 00 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 48 00 00 48 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 48 00 48 00 48 48 00 00 48 00 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 00 48 00 00 00 48 00 00 48 00 48 48 00 00 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 48 00 48 00 00 48 00 48 48 00 48 48 00 48 00 00 48 48 00 48 00 00 00 48 48 00 48 00 48 00 48 00 00 48 00 48 00 00 48 48 00 48 00 48 48 00 00 00 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 48 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 00 48 48 00 48 00 48 00 48 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 00 00 00 48 00 48 00 00 00 48 00 48 00 48 00 48 00 00 48 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 00 00 00 48 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 48 00 48 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 00 00 48 00 00 48 48 00 48 48 00
*/
