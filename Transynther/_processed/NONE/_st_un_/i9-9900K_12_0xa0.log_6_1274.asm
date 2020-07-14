.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x448b, %r10
nop
nop
nop
nop
nop
sub $46133, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1914b, %rsi
lea addresses_WT_ht+0x1db0b, %rdi
nop
nop
nop
nop
nop
add $10224, %r10
mov $5, %rcx
rep movsw
nop
add $1035, %r13
lea addresses_A_ht+0x1d98e, %rsi
lea addresses_D_ht+0x1ab8b, %rdi
nop
sub $35320, %r8
mov $2, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rsi

// Store
lea addresses_A+0x1448b, %r13
nop
nop
nop
nop
nop
and %r11, %r11
movb $0x51, (%r13)
nop
nop
nop
cmp $25251, %rax

// Faulty Load
lea addresses_A+0xa18b, %rsi
cmp %rcx, %rcx
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'30': 1, 'ec': 1, '0c': 2, '72': 1, 'c4': 1}
ec 72 c4 0c 0c 30
*/
