.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xacfa, %rsi
lea addresses_WC_ht+0x139fa, %rdi
nop
nop
dec %r11
mov $46, %rcx
rep movsq
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x15282, %r13
nop
nop
sub $8245, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x10fa, %rsi
lea addresses_UC_ht+0xe8fa, %rdi
nop
nop
and $35973, %r8
mov $5, %rcx
rep movsw
nop
cmp $41436, %r13
lea addresses_A_ht+0x159aa, %rsi
lea addresses_WT_ht+0x10a1a, %rdi
nop
nop
nop
cmp $3268, %r9
mov $102, %rcx
rep movsw
nop
nop
nop
dec %r9
lea addresses_A_ht+0x38fa, %rsi
lea addresses_normal_ht+0xcafa, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $96, %rcx
rep movsw
sub %r11, %r11
lea addresses_WT_ht+0x3406, %rcx
nop
sub $33022, %r11
movb $0x61, (%rcx)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xbdfa, %rdi
nop
nop
nop
nop
add $22877, %r9
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1237a, %rsi
lea addresses_D_ht+0x1aefa, %rdi
clflush (%rdi)
nop
nop
xor %r11, %r11
mov $88, %rcx
rep movsw
nop
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rcx
push %rsi

// Faulty Load
lea addresses_UC+0x188fa, %rcx
cmp $28778, %rsi
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'45': 17662, '00': 3691, '48': 476}
45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 48 45 45 45 45 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 48 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 48 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 48 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 48 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 48 45 45 00 45 00 45 45 45 00 45 00 45 48 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 48 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 48 45 45 00 45 45 00 45 45 45 45 48 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 45 48 45 45 45 45 00 45 48 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 48 45 45 45 45 48 45 45 00 45 45 48 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 48 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 48 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 48 45 45 00 45 45 45 00 45 00 45 45 45 45 45 48 45 45 45 45 00 45 45 45 45 45 45 00 45 45 48 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 00 45
*/
