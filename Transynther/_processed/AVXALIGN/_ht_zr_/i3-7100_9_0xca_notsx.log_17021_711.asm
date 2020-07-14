.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1843b, %r8
nop
nop
nop
nop
nop
and $45961, %rbp
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
nop
xor $53109, %r9
lea addresses_WC_ht+0x2ecf, %r14
nop
nop
nop
nop
cmp %r11, %r11
movb (%r14), %al
xor $2562, %r11
lea addresses_A_ht+0x10dbf, %r9
clflush (%r9)
nop
cmp $13114, %rbp
movl $0x61626364, (%r9)
nop
nop
nop
nop
cmp $14900, %r14
lea addresses_D_ht+0x56cf, %rsi
lea addresses_WC_ht+0xe0ef, %rdi
nop
nop
add $58920, %r14
mov $105, %rcx
rep movsw
nop
nop
nop
nop
add $29581, %rbp
lea addresses_WC_ht+0x282f, %r12
and $46252, %r8
movw $0x6162, (%r12)
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1774f, %rsi
lea addresses_WC_ht+0x74f, %rdi
nop
nop
nop
nop
nop
add $28234, %r9
mov $101, %rcx
rep movsw
nop
nop
nop
nop
sub $49317, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rdi
push %rdx

// Faulty Load
mov $0x3ed35400000006cf, %rdx
clflush (%rdx)
nop
nop
xor %rdi, %rdi
vmovaps (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'46': 3406, '00': 5143, '48': 8472}
48 00 00 00 48 48 00 48 48 48 00 46 00 48 48 48 00 00 46 48 00 48 48 48 46 46 48 48 00 46 00 46 48 00 46 48 00 48 00 48 46 00 48 48 00 48 00 48 46 00 46 48 48 46 48 48 48 48 48 00 48 00 46 48 00 48 46 48 48 00 46 00 48 48 00 48 00 48 46 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 00 46 48 00 48 00 48 46 48 00 48 48 00 48 46 48 46 48 00 48 48 00 48 48 00 48 00 48 46 00 46 48 48 00 48 00 48 48 00 48 48 48 00 00 48 00 48 00 48 48 46 48 48 00 00 46 48 00 46 00 46 48 48 46 48 00 46 48 00 48 00 46 46 48 00 48 00 46 48 46 00 00 48 46 46 48 46 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 46 48 48 00 46 48 00 48 48 48 46 00 46 48 00 48 46 00 48 48 00 48 00 48 00 48 48 00 00 46 46 48 48 00 46 48 48 48 00 46 48 48 48 48 48 00 48 00 48 00 48 00 46 00 00 46 48 00 48 48 46 48 48 48 46 48 46 00 46 48 00 00 46 48 46 46 00 48 46 48 00 48 00 48 48 00 46 48 46 00 00 48 46 48 00 46 48 48 00 48 48 00 48 00 48 48 48 46 48 46 48 00 48 46 00 48 00 48 00 00 48 48 48 48 46 48 00 46 48 48 48 48 48 48 00 48 00 48 48 48 46 48 46 48 48 00 46 48 46 48 00 48 00 48 00 48 46 48 48 46 00 48 48 46 48 48 00 48 00 48 48 00 48 48 48 00 48 48 00 48 48 46 48 48 48 48 48 00 00 48 00 48 00 48 00 46 48 48 00 00 48 48 48 00 48 46 46 48 00 48 48 46 00 46 48 00 48 48 48 46 48 00 48 00 48 46 48 00 48 46 48 48 00 48 00 46 48 48 00 48 46 00 46 48 00 48 48 00 48 48 48 46 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 00 46 00 46 00 00 48 00 00 48 48 46 00 00 48 00 48 48 48 48 00 46 48 00 48 48 00 00 00 48 00 00 46 00 48 00 48 00 48 48 00 46 00 48 46 46 48 48 46 48 00 48 48 00 46 00 00 46 48 48 00 46 46 48 48 48 46 48 00 48 00 48 00 46 00 00 48 48 46 48 46 48 46 00 48 48 00 48 48 00 46 48 00 48 48 48 00 48 00 46 46 48 48 46 48 48 00 46 48 00 48 00 48 48 00 48 00 48 46 48 48 00 48 48 48 48 00 00 46 48 00 46 48 00 48 48 48 46 00 46 48 00 48 48 46 46 48 48 48 48 00 46 48 00 48 00 48 46 48 46 00 46 48 48 48 48 46 48 48 48 46 00 46 46 48 00 46 48 48 46 48 00 46 48 48 00 46 00 46 00 46 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 48 48 48 46 00 00 46 48 00 48 46 48 00 46 46 48 48 48 48 00 48 00 46 48 48 48 48 00 46 48 46 48 00 48 00 00 48 48 00 00 48 48 00 00 00 00 48 48 46 00 46 00 48 48 00 00 48 48 00 48 48 00 48 00 00 48 00 48 46 00 46 48 46 00 48 46 48 48 48 48 48 48 00 48 00 46 48 48 46 48 48 00 46 48 48 00 46 48 00 48 48 46 00 48 48 00 46 48 46 46 48 00 48 48 00 48 00 00 48 46 00 46 00 00 48 48 48 46 48 48 00 48 48 48 48 48 00 46 48 46 00 48 48 48 46 00 46 48 48 00 00 48 48 00 48 46 48 00 48 46 48 48 48 48 46 48 46 48 00 00 48 00 00 00 48 00 00 00 46 46 00 48 00 48 46 46 48 00 48 00 48 48 48 48 00 48 48 00 00 48 00 46 00 48 00 46 46 48 48 00 00 46 00 00 48 46 00 00 00 48 00 48 00 48 46 48 46 00 46 48 00 48 00 48 46 48 46 48 48 00 48 46 00 46 48 48 46 48 46 48 00 48 48 48 48 00 46 00 00 48 00 48 48 48 46 48 48 00 48 00 48 48 00 48 46 48 48 00 48 48 48 48 46 48 00 00 48 48 46 48 48 48 00 00 48 00 00 48 00 46 48 48 48 48 00 48 48 48 00 48 00 00 48 48 46 48 48 48 00 00 46 00 48 00 46
*/
