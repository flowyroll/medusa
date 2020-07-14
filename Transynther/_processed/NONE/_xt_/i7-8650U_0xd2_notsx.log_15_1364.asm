.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9caf, %r9
nop
nop
add %r15, %r15
movw $0x6162, (%r9)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x6363, %rdi
nop
nop
nop
nop
nop
sub $40773, %r14
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
cmp $27208, %r15
lea addresses_UC_ht+0x38af, %r14
add %rbp, %rbp
movups (%r14), %xmm4
vpextrq $1, %xmm4, %rsi
nop
sub $52048, %rbp
lea addresses_WT_ht+0xeef7, %r15
sub $54264, %r11
movb (%r15), %r9b
and %r11, %r11
lea addresses_WC_ht+0xb5af, %rsi
lea addresses_normal_ht+0xa562, %rdi
nop
nop
add $52669, %r14
mov $120, %rcx
rep movsw
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbx
push %rdx

// Faulty Load
lea addresses_WC+0x70af, %r15
nop
nop
nop
nop
nop
mfence
mov (%r15), %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'38': 15}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
