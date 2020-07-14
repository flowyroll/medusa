.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x81ed, %rax
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x1ac25, %r11
add $38877, %rcx
movb (%r11), %r12b
xor %r11, %r11
lea addresses_UC_ht+0x20d, %rbp
nop
nop
cmp $1081, %r11
mov (%rbp), %rsi
nop
nop
nop
nop
nop
cmp $24265, %r11
lea addresses_D_ht+0x1acd, %rsi
lea addresses_WC_ht+0x1e98d, %rdi
nop
sub $33291, %rax
mov $59, %rcx
rep movsq
inc %r12
lea addresses_A_ht+0xac05, %rcx
nop
and %rax, %rax
mov (%rcx), %r12w
nop
and $8656, %r12
lea addresses_WT_ht+0x5b6d, %rsi
lea addresses_D_ht+0x656d, %rdi
nop
nop
nop
inc %rax
mov $94, %rcx
rep movsb
nop
nop
xor $46886, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbx
push %rcx

// Faulty Load
lea addresses_WT+0x1756d, %r15
nop
nop
nop
add $32550, %rbx
movaps (%r15), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'46': 1194, '49': 1018}
46 46 49 46 46 46 49 49 49 46 49 46 49 49 49 49 46 49 46 46 49 49 49 46 49 49 49 46 49 49 46 49 49 49 49 46 46 46 49 49 49 49 49 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 49 49 49 49 46 46 49 49 46 46 49 49 49 46 49 49 49 49 49 46 46 49 49 49 49 46 49 46 49 49 49 49 46 49 46 49 49 46 49 46 49 46 46 46 49 46 46 46 46 46 46 49 46 49 49 49 46 46 49 49 46 46 49 46 49 49 49 49 49 49 46 46 46 49 46 49 46 49 49 49 46 49 49 49 49 49 46 46 46 49 46 46 49 49 49 46 49 46 49 49 46 46 49 46 46 46 46 46 49 49 46 49 49 46 46 49 49 49 46 49 49 49 49 46 49 49 46 49 46 49 49 49 49 46 46 46 46 46 49 49 46 46 46 49 46 46 46 49 46 46 49 49 49 46 46 46 49 49 46 49 46 46 49 49 49 46 46 49 46 46 49 46 46 46 49 46 46 49 49 46 46 46 49 46 49 46 46 49 46 49 46 49 46 49 49 46 46 49 46 49 49 49 46 49 46 49 49 46 49 46 46 49 49 49 46 46 46 46 49 46 46 49 46 46 46 49 49 49 49 46 49 46 46 46 46 46 46 46 46 49 49 46 46 46 49 49 46 46 46 49 49 49 49 46 46 46 49 46 49 46 46 49 46 49 49 46 49 49 49 49 46 46 46 49 49 46 46 46 49 49 46 46 49 46 46 46 49 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 49 49 49 46 46 46 49 46 46 49 49 49 46 49 46 49 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 49 49 46 46 46 46 46 49 46 49 46 49 49 46 46 46 49 49 49 49 46 46 46 46 49 46 49 49 49 49 49 46 46 49 49 46 49 46 49 46 49 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 49 49 46 46 46 46 49 49 46 46 46 49 49 46 49 46 49 46 49 49 49 49 49 46 49 46 46 49 46 46 46 49 49 46 49 46 46 49 46 49 49 46 49 49 49 49 49 46 49 46 46 49 46 49 46 46 49 49 49 46 46 46 46 46 49 49 46 49 49 46 49 46 46 46 46 49 46 49 49 46 46 49 49 49 49 46 46 46 49 49 49 49 46 46 46 49 49 49 46 49 46 46 46 46 49 46 46 49 49 49 49 46 46 46 46 46 46 46 49 49 46 46 49 46 49 46 46 46 49 49 46 49 46 49 46 49 49 49 49 46 49 49 49 49 46 46 46 46 49 46 46 46 49 49 46 49 46 49 46 46 49 49 49 49 46 49 46 46 46 46 46 49 46 46 46 49 46 49 49 46 49 46 49 46 49 46 46 46 49 46 46 49 46 46 49 46 49 46 49 46 46 46 46 46 49 49 46 49 46 46 46 46 46 49 46 46 49 49 46 46 49 49 46 49 49 46 46 49 46 46 49 46 46 46 49 46 46 46 46 49 46 46 49 49 49 49 49 49 49 46 46 46 49 46 49 46 46 46 46 49 49 49 49 46 46 46 46 49 46 46 46 49 46 49 49 46 46 49 46 49 49 46 49 46 46 46 49 46 46 46 49 46 49 46 46 49 46 49 46 46 46 46 49 46 46 46 49 46 49 46 49 49 46 46 49 49 46 46 46 49 46 46 46 46 46 49 46 49 49 46 49 49 49 46 46 49 49 46 49 46 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 49 46 49 49 46 49 46 49 49 46 46 49 49 49 46 46 46 46 49 46 46 46 46 46 49 46 49 49 46 46 49 46 49 46 49 46 49 49 46 46 49 46 46 49 46 46 46 46 46 46 46 49 46 49 46 46 46 46 49 46 46 46 46 49 46 49 49 46 49 49 46 49 49 46 49 46 46 46 46 49 46 49 46 49 49 49 46 46 46 49 46 46 49 46 46 49 46 46 49 46 46 49 49 46 49 46 49 49 46 49 46 46 46 49 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 49 46 46 46 49 46 49 46 49 46 49 46 46 46 49 49 46 46 46 46 49 46 49 46 49 49 49 49 49 46 46 46 46 49 49 49 46 49 49 46 46 49 46
*/
