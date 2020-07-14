.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c965, %rsi
lea addresses_A_ht+0xd0e5, %rdi
nop
nop
xor $21918, %r8
mov $13, %rcx
rep movsl
cmp $22014, %r12
lea addresses_UC_ht+0x1567d, %r15
nop
nop
nop
nop
nop
add %rax, %rax
movups (%r15), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x12b65, %rsi
lea addresses_WC_ht+0xb4c1, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $72, %rcx
rep movsq
nop
inc %rax
lea addresses_normal_ht+0xf165, %rsi
lea addresses_D_ht+0xcf85, %rdi
nop
nop
nop
sub $10157, %r10
mov $67, %rcx
rep movsw
nop
nop
nop
nop
add $60946, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0xb465, %rsi
lea addresses_D+0xdd25, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub $54531, %r10
mov $14, %rcx
rep movsl
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x12b65, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%r15)
nop
and %rsi, %rsi

// Faulty Load
mov $0x6d40250000000b65, %r15
nop
inc %rsi
movb (%r15), %r9b
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'00': 8708, 'e4': 5680, '51': 7441}
51 00 e4 51 51 00 51 51 00 00 00 00 51 51 00 e4 51 51 00 00 51 e4 00 e4 e4 51 00 e4 00 e4 00 e4 e4 00 51 e4 51 00 e4 00 51 00 51 00 00 51 e4 e4 51 00 51 51 00 e4 00 00 00 51 00 00 e4 51 e4 e4 00 e4 00 00 00 00 51 e4 51 00 51 00 e4 00 51 00 51 00 00 51 00 e4 00 e4 00 00 51 00 51 e4 00 e4 00 51 51 e4 00 e4 00 00 51 e4 00 51 00 e4 e4 e4 00 00 51 00 51 e4 00 51 51 51 51 e4 00 51 51 00 e4 51 00 51 00 51 00 51 e4 00 00 51 00 e4 00 51 e4 e4 00 e4 00 00 e4 51 00 00 51 00 51 e4 00 e4 00 e4 00 51 00 51 00 00 51 00 51 00 e4 00 51 00 51 00 e4 e4 00 51 51 e4 00 e4 51 51 00 00 e4 00 e4 00 e4 51 e4 00 00 51 00 00 51 e4 e4 00 51 00 00 e4 00 51 00 00 51 00 51 e4 00 e4 00 e4 51 00 51 e4 00 e4 00 00 51 00 e4 51 51 e4 00 e4 00 51 00 00 e4 00 51 51 e4 00 51 51 51 00 e4 e4 00 51 51 e4 00 51 00 51 51 e4 51 00 e4 51 51 51 51 00 51 51 e4 e4 00 51 00 51 51 51 51 00 51 51 00 e4 00 e4 e4 51 00 51 e4 00 00 51 00 e4 51 51 e4 51 51 00 51 00 e4 00 51 00 51 51 00 00 51 51 51 00 e4 00 51 51 00 51 e4 e4 00 51 e4 00 e4 e4 00 51 00 51 00 51 51 00 00 51 e4 51 00 e4 00 00 51 e4 51 51 e4 00 e4 51 51 e4 00 e4 00 00 00 51 51 00 51 e4 51 00 e4 51 00 00 00 51 00 00 e4 51 00 51 51 51 00 51 51 e4 51 51 e4 00 e4 e4 51 51 00 e4 e4 51 e4 00 00 e4 e4 51 00 e4 e4 e4 00 e4 00 e4 51 00 00 e4 00 51 00 51 51 51 e4 00 51 51 e4 51 00 00 51 00 51 51 51 51 00 e4 e4 00 00 51 00 00 51 00 51 51 00 51 51 e4 00 51 00 51 e4 e4 00 51 51 51 e4 00 51 e4 e4 00 00 00 51 51 00 51 51 00 e4 00 e4 00 e4 00 51 00 e4 00 e4 00 00 51 e4 00 51 51 e4 00 51 51 51 00 00 51 00 51 00 e4 51 00 51 00 e4 51 00 51 00 00 51 00 51 51 51 e4 00 51 00 51 00 e4 00 00 e4 00 51 00 e4 51 e4 00 51 00 51 e4 00 e4 e4 00 51 00 00 00 51 51 51 e4 51 00 00 00 00 e4 00 e4 00 00 51 00 51 e4 00 51 51 51 e4 00 00 51 00 51 e4 00 e4 51 e4 00 51 00 00 51 e4 51 00 51 51 51 e4 51 00 51 00 e4 51 00 51 00 51 e4 00 e4 00 00 e4 00 51 51 00 51 00 00 51 51 00 51 00 51 51 00 51 e4 00 51 51 e4 e4 51 00 51 51 00 00 51 e4 51 51 e4 00 00 51 e4 51 00 e4 00 e4 00 e4 51 e4 00 00 00 e4 51 51 00 e4 00 51 e4 00 51 e4 e4 e4 00 00 e4 e4 00 e4 51 00 51 51 00 51 51 00 51 51 00 e4 51 00 51 e4 00 51 00 51 e4 00 e4 00 00 51 00 00 51 00 51 00 e4 00 51 00 51 00 51 51 51 00 51 51 e4 00 51 51 00 51 e4 51 00 51 51 00 00 00 00 e4 00 00 51 00 51 00 51 51 00 00 e4 51 e4 00 51 51 00 e4 00 51 00 00 51 51 e4 e4 51 00 51 e4 00 51 51 00 51 e4 00 00 e4 00 00 51 51 51 00 e4 e4 51 e4 00 00 00 e4 00 51 00 51 00 51 51 00 51 51 e4 e4 e4 00 51 51 00 00 51 51 51 e4 00 51 00 51 51 00 51 51 00 51 51 00 51 e4 e4 00 51 51 51 00 e4 51 51 e4 51 00 00 00 00 51 00 e4 e4 00 e4 00 e4 00 00 e4 00 e4 00 51 00 51 00 00 e4 00 00 e4 00 51 00 00 51 00 e4 00 51 e4 00 51 51 00 00 e4 00 51 51 00 51 00 e4 00 51 51 e4 00 e4 51 00 51 51 00 51 51 e4 e4 00 00 e4 00 00 51 e4 00 00 00 00 e4 00 00 51 00 e4 00 00 e4 00 00 51 51 00 51 00 e4 00 e4 51 51 00 51 51 51 00 51 00 00 e4 e4 e4 00 51 e4 00 51 51 51 e4 51 00 00 e4 00 51 e4 00 00 e4 00 51 51 e4 00 51 51 e4 00 00 e4 00 51 00 00 51 00 51 e4 00 00 51 51 00 00 00 e4 00 51 51 e4
*/
