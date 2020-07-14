.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1147e, %rdi
nop
nop
nop
nop
sub $55134, %r11
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x6c7e, %rsi
lea addresses_WC_ht+0x7522, %rdi
nop
nop
xor $6210, %rax
mov $90, %rcx
rep movsl
nop
nop
add $49546, %rsi
lea addresses_D_ht+0x27e, %rsi
lea addresses_WC_ht+0x867e, %rdi
nop
and $61376, %r14
mov $46, %rcx
rep movsw
nop
nop
and $16561, %r14
lea addresses_UC_ht+0x1a7e, %rsi
lea addresses_normal_ht+0x8e7e, %rdi
nop
nop
add $5554, %r10
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x14111, %rsi
lea addresses_WT_ht+0x1b0ce, %rdi
nop
nop
nop
nop
nop
add $41515, %rbp
mov $72, %rcx
rep movsw
nop
nop
and $32115, %rax
lea addresses_normal_ht+0x1c57e, %rax
sub %r10, %r10
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1d9fe, %rsi
lea addresses_A_ht+0x1e27e, %rdi
nop
nop
nop
nop
nop
xor $30955, %rax
mov $12, %rcx
rep movsb
nop
sub $23912, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbx
push %rdi

// Faulty Load
mov $0x1e324f000000067e, %rbx
nop
and $5950, %r11
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'45': 2467, 'ff': 1, '0b': 1, '49': 1, '00': 10610, '08': 1, '44': 8733, '46': 15}
44 44 00 00 00 00 00 44 44 00 44 44 00 44 00 44 00 00 00 44 45 00 00 44 00 44 44 44 00 44 00 44 44 00 45 00 00 44 00 00 44 45 00 00 44 44 44 44 45 00 00 00 44 44 44 44 00 44 44 44 00 44 45 00 00 44 00 44 44 44 44 00 00 00 00 00 00 44 44 44 44 00 44 44 44 44 00 45 00 00 44 00 44 44 00 44 00 00 00 44 44 44 44 00 45 00 44 44 00 44 44 00 45 45 00 44 00 44 45 00 44 44 00 44 00 44 00 44 00 44 00 45 00 44 44 44 44 44 00 44 44 45 45 44 44 00 44 00 44 00 00 00 00 44 00 44 44 00 45 00 00 44 44 00 44 44 44 00 44 45 00 00 00 00 00 00 44 00 44 45 45 00 00 00 00 00 44 00 44 00 44 00 45 00 00 00 00 44 00 44 00 44 44 45 00 00 44 00 45 00 45 00 00 44 44 00 44 44 00 44 00 00 00 44 00 44 00 45 00 44 00 44 44 45 00 00 44 44 00 45 44 00 44 44 00 44 00 45 00 00 44 00 44 44 44 00 44 44 44 00 45 00 00 44 00 44 44 00 44 00 45 44 00 45 00 00 00 00 00 44 00 44 45 00 00 44 00 44 00 44 00 45 0b 44 44 44 44 00 45 44 00 00 00 44 00 44 00 44 44 00 44 45 00 44 44 44 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 45 00 00 00 44 00 44 00 44 00 00 45 44 00 44 44 44 44 00 44 45 00 00 44 00 45 45 00 00 00 00 44 44 00 44 44 00 00 44 44 44 00 44 45 00 44 44 44 00 44 00 44 00 00 00 00 44 00 44 44 00 45 00 00 44 00 00 44 44 45 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 44 44 00 44 44 00 45 00 00 00 44 00 44 00 44 45 00 00 00 00 44 44 00 00 44 44 44 00 45 00 00 44 00 44 44 44 45 00 00 44 00 00 44 45 45 00 00 44 00 44 44 44 00 45 00 00 00 44 00 44 00 00 45 00 00 00 44 00 44 44 44 45 00 45 00 00 44 44 44 00 45 45 00 00 00 00 44 44 00 45 00 00 00 00 00 00 44 00 00 44 44 44 00 45 00 00 00 00 00 00 00 44 00 44 45 00 00 44 00 44 00 44 00 00 00 44 44 00 44 00 00 00 00 44 44 44 00 44 45 00 00 00 00 44 44 00 00 00 44 00 44 00 45 00 00 00 44 00 44 44 00 00 44 44 00 44 00 44 44 00 00 00 00 00 44 44 44 45 45 00 00 00 44 00 44 00 44 45 00 00 44 00 44 00 45 00 00 00 44 00 44 00 44 45 00 00 00 44 44 45 00 44 00 44 00 00 45 00 00 00 00 44 44 44 00 44 00 45 00 44 44 44 44 44 44 00 44 44 00 45 45 00 00 00 00 44 44 00 44 00 44 44 45 00 44 00 44 44 45 00 00 00 00 00 00 00 44 45 00 00 00 44 44 44 45 45 00 00 44 44 45 00 00 44 44 00 44 44 44 00 45 00 44 44 00 45 00 00 00 00 44 44 00 44 00 45 44 00 45 45 00 44 00 44 00 00 44 00 45 00 00 00 00 00 44 00 44 44 44 00 45 00 00 44 00 44 44 00 45 45 45 45 00 45 45 45 00 00 00 44 44 44 00 45 00 45 00 00 44 00 44 45 45 45 00 00 44 00 44 00 44 00 44 00 45 00 45 00 00 44 00 44 00 44 44 44 44 44 45 00 00 00 00 44 00 44 00 44 44 45 45 00 00 00 00 44 00 44 00 44 44 44 00 44 00 44 00 44 44 00 00 44 00 00 44 00 44 00 44 45 00 45 00 00 00 44 00 00 44 44 44 00 44 00 45 45 00 44 44 44 00 00 00 44 44 45 00 00 00 44 44 44 00 45 00 00 00 00 44 44 44 00 44 00 00 00 44 44 44 44 00 44 44 45 00 00 44 44 00 44 44 44 00 44 00 00 44 00 00 00 00 44 44 00 45 00 44 44 44 44 44 44 00 44 44 00 45 00 00 00 44 44 44 00 44 44 45 00 00 00 44 00 44 44 00 44 44 44 44 45 00 00 44 44 44 44 44 44 44 44 00 44 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 00 44 44 45 00 00 44 00 44 44 44 00
*/
